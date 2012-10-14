.class public Lcom/android/browser/model/ForumPredictionUrlsProvider;
.super Ljava/lang/Object;
.source "ForumPredictionUrlsProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/browser/model/ForumPredictionUrlsProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;

.field private mIndexUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageExprs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mPageExprs:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/browser/model/HttpHeaderDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    .line 45
    new-instance v0, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;-><init>(Lcom/android/browser/model/ForumPredictionUrlsProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/ForumPredictionUrlsProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mPageExprs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/model/ForumPredictionUrlsProvider;)Lcom/android/browser/model/HttpHeaderDatabaseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mHeaderDBHelper:Lcom/android/browser/model/HttpHeaderDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/browser/model/ForumPredictionUrlsProvider;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->sInstance:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/model/ForumPredictionUrlsProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->sInstance:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->sInstance:Lcom/android/browser/model/ForumPredictionUrlsProvider;

    return-object v0
.end method


# virtual methods
.method public addForumIndexPage(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/browser/model/ForumPredictionUrlsProvider;->isForumUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    monitor-exit v1

    .line 140
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    move-object v0, p1

    .line 125
    .local v0, _url:Ljava/lang/String;
    new-instance v1, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;-><init>(Lcom/android/browser/model/ForumPredictionUrlsProvider;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/model/ForumPredictionUrlsProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 123
    .end local v0           #_url:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isForumUrl(Ljava/lang/String;)Z
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    .line 113
    :goto_0
    return v2

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mIndexUrls:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    :cond_1
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/browser/model/ForumPredictionUrlsProvider;->mPageExprs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, oneRule:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    monitor-exit v2

    move v2, v7

    goto :goto_0

    .line 113
    .end local v1           #oneRule:Ljava/lang/String;
    :cond_4
    monitor-exit v2

    move v2, v6

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
