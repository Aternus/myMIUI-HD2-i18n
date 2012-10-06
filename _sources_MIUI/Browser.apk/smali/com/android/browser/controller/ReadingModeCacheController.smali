.class public Lcom/android/browser/controller/ReadingModeCacheController;
.super Ljava/lang/Object;
.source "ReadingModeCacheController.java"

# interfaces
.implements Lcom/android/browser/controller/ReadingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/ReadingModeCacheController$1;,
        Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;
    }
.end annotation


# static fields
.field private static final GET_NEXT_PAGE_DELAY:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.controller.ReadingModeCacheController"

.field private static final MAX_CACHE_PAGE_NUM:I = 0x32

.field private static final MESSAGE_DESTROY:I = 0x2

.field private static final MESSAGE_GET_NEXT_PAGE:I = 0x3

.field private static final MESSAGE_MARK_AS_READ:I = 0x4

.field private static final MESSAGE_RESUME_CACHE:I = 0x5

.field private static final MESSAGE_START:I


# instance fields
.field private mCacheGenerateThread:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

.field private mCachedPageNum:I

.field private mChildHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

.field private mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

.field private mOriUrl:Ljava/lang/String;

.field private mPaused:Z

.field private mPreviousUrlInCache:Ljava/lang/String;

.field private mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

.field private mStopped:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWmlParser:Lcom/android/browser/util/WMLParserSax;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    .line 59
    iput-boolean v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mStopped:Z

    .line 61
    iput-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPreviousUrlInCache:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ReadingModePageDataProvider;-><init>(Lcom/android/browser/controller/ReadingController;)V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 65
    new-instance v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;-><init>(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/controller/ReadingModeCacheController$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCacheGenerateThread:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    .line 66
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCacheGenerateThread:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->setPriority(I)V

    .line 67
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCacheGenerateThread:Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->start()V

    .line 68
    return-void
.end method

.method static synthetic access$102(Lcom/android/browser/controller/ReadingModeCacheController;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/controller/ReadingModeCacheController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mStopped:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/util/WMLParserSax;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/util/WMLParserSax;)Lcom/android/browser/util/WMLParserSax;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/controller/ReadingModeCacheController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/controller/ReadingModeCacheController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/controller/ReadingModeCacheController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/browser/controller/ReadingModeCacheController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/controller/ReadingModeController$ReadingData;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/controller/ReadingModeCacheController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModePageDataProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeCacheController;->stopCache()V

    .line 135
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    .line 140
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getCachedPageNum()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public markAsRead(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/android/browser/model/ReadingModeCacheManager;->isUrlInCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 148
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V
    .locals 8
    .parameter "dataProvider"
    .parameter "succeeded"

    .prologue
    .line 160
    if-eqz p2, :cond_4

    .line 163
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v5}, Lcom/android/browser/model/ReadingModePageDataProvider;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, contentHTML:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    if-eqz v5, :cond_1

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/android/browser/controller/ReadingModeController;->preprocessWapHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_1
    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v1}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    .line 170
    .local v1, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iput-object v0, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 171
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v5}, Lcom/android/browser/model/ReadingModePageDataProvider;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 172
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v5}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 173
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v5}, Lcom/android/browser/model/ReadingModePageDataProvider;->getComments()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    .line 174
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v5}, Lcom/android/browser/model/ReadingModePageDataProvider;->getNextLink()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 177
    :try_start_0
    iget-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 178
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPreviousUrlInCache:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/browser/model/ReadingModeCacheManager;->writeCacheData(Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, fileInCache:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 180
    iget v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    .line 182
    :cond_2
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 183
    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    .line 184
    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    iput-object v3, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPreviousUrlInCache:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0           #contentHTML:Ljava/lang/String;
    .end local v1           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v3           #fileInCache:Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    .line 194
    .restart local v0       #contentHTML:Ljava/lang/String;
    .restart local v1       #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 195
    .local v2, e:Ljava/io/IOException;
    const-string v5, "com.android.browser.controller.ReadingModeCacheController"

    const-string v6, "Error when writing the cache data"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 201
    .end local v0           #contentHTML:Ljava/lang/String;
    .end local v1           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    new-instance v5, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v5}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    iput-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 202
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v6}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 203
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v6}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    goto :goto_0
.end method

.method public pauseCache()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    .line 120
    return-void
.end method

.method public resumeCache()V
    .locals 2

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    .line 125
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public startCache(Ljava/lang/String;Lcom/android/browser/model/ReadingModeRuleProvider$Rule;Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "oriUrl"
    .parameter "rule"
    .parameter "context"
    .parameter "userAgent"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v10, "com.android.browser.controller.ReadingModeCacheController"

    .line 71
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    .line 73
    iput-object p3, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;

    .line 74
    iput-object p4, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mUserAgent:Ljava/lang/String;

    .line 75
    iput v9, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    .line 76
    iput-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 77
    iput-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPreviousUrlInCache:Ljava/lang/String;

    .line 78
    iput-boolean v9, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z

    .line 79
    iput-boolean v9, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mStopped:Z

    .line 81
    new-instance v2, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;

    invoke-direct {v2}, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;-><init>()V

    .line 83
    .local v2, lastData:Lcom/android/browser/model/ReadingModeCacheManager$CacheData;
    :try_start_0
    invoke-static {p1, v2}, Lcom/android/browser/model/ReadingModeCacheManager;->getLastCachedDataFromUrl(Ljava/lang/String;Lcom/android/browser/model/ReadingModeCacheManager$CacheData;)I

    move-result v0

    .line 85
    .local v0, cachedNum:I
    if-eqz v0, :cond_1

    iget-object v6, v2, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    if-eqz v6, :cond_1

    .line 86
    const-string v6, "com.android.browser.controller.ReadingModeCacheController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pages already in cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I

    .line 89
    new-instance v4, Ljava/net/URI;

    iget-object v6, v2, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v6, v6, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, nextUri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, oriUri:Ljava/net/URI;
    invoke-virtual {v5, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    .line 94
    .end local v5           #oriUri:Ljava/net/URI;
    :cond_0
    iget-object v6, v2, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->fileName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mPreviousUrlInCache:Ljava/lang/String;

    .line 95
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v0           #cachedNum:I
    .end local v4           #nextUri:Ljava/net/URI;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 106
    .local v3, msg:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 107
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    return-void

    .line 98
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 99
    .local v1, e:Ljava/io/IOException;
    const-string v6, "com.android.browser.controller.ReadingModeCacheController"

    const-string v6, "Load cache data error"

    invoke-static {v10, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 101
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v6, "com.android.browser.controller.ReadingModeCacheController"

    const-string v6, "Parse URI error"

    invoke-static {v10, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopCache()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ReadingModeCacheController;->mStopped:Z

    .line 115
    return-void
.end method
