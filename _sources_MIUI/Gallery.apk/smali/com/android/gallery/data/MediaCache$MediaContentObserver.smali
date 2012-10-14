.class Lcom/android/gallery/data/MediaCache$MediaContentObserver;
.super Landroid/database/ContentObserver;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/MediaCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaContentObserver"
.end annotation


# instance fields
.field public final is_internal:Z

.field final synthetic this$0:Lcom/android/gallery/data/MediaCache;


# direct methods
.method public constructor <init>(Lcom/android/gallery/data/MediaCache;Landroid/os/Handler;Z)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "is_internal"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    .line 221
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 222
    iput-boolean p3, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->is_internal:Z

    .line 223
    return-void
.end method

.method private notifyMessage(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 226
    iget-object v3, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #getter for: Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/gallery/data/MediaCache;->access$000(Lcom/android/gallery/data/MediaCache;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/NotificationParameter;

    .line 227
    .local v1, p:Lcom/android/gallery/data/NotificationParameter;
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getFolderPath()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->is_internal:Z

    sget-object v4, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 231
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 228
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 234
    .end local v1           #p:Lcom/android/gallery/data/NotificationParameter;
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const-wide/16 v3, -0x1

    const-string v5, "Gallery/MediaCache"

    .line 238
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 240
    const-string v2, "Gallery/MediaCache"

    const-string v2, "media DB notification comes"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->increaseLatestVersion()V

    .line 243
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #getter for: Lcom/android/gallery/data/MediaCache;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/gallery/data/MediaCache;->access$100(Lcom/android/gallery/data/MediaCache;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const-string v2, "Gallery/MediaCache"

    const-string v2, "media is scanning"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #getter for: Lcom/android/gallery/data/MediaCache;->mIsScanning:Z
    invoke-static {v2}, Lcom/android/gallery/data/MediaCache;->access$100(Lcom/android/gallery/data/MediaCache;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, now:J
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #getter for: Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J
    invoke-static {v2}, Lcom/android/gallery/data/MediaCache;->access$200(Lcom/android/gallery/data/MediaCache;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #setter for: Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J
    invoke-static {v2, v0, v1}, Lcom/android/gallery/data/MediaCache;->access$202(Lcom/android/gallery/data/MediaCache;J)J

    .line 255
    invoke-static {}, Lcom/android/gallery/util/StorageUtils;->hasStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->notifyMessage(I)V

    .line 274
    .end local v0           #now:J
    :cond_0
    :goto_1
    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #setter for: Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J
    invoke-static {v2, v3, v4}, Lcom/android/gallery/data/MediaCache;->access$202(Lcom/android/gallery/data/MediaCache;J)J

    goto :goto_0

    .line 262
    .restart local v0       #now:J
    :cond_2
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->notifyMessage(I)V

    goto :goto_1

    .line 268
    .end local v0           #now:J
    :cond_3
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache$MediaContentObserver;->this$0:Lcom/android/gallery/data/MediaCache;

    #setter for: Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J
    invoke-static {v2, v3, v4}, Lcom/android/gallery/data/MediaCache;->access$202(Lcom/android/gallery/data/MediaCache;J)J

    goto :goto_1
.end method
