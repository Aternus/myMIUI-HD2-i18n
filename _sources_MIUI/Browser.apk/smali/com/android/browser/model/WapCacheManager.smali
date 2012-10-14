.class public Lcom/android/browser/model/WapCacheManager;
.super Ljava/lang/Object;
.source "WapCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ITEMS:I = 0x14

.field private static mInstance:Lcom/android/browser/model/WapCacheManager;


# instance fields
.field private mCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/model/WapCacheManager$WapCacheItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    .line 16
    return-void
.end method

.method public static instance()Lcom/android/browser/model/WapCacheManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/browser/model/WapCacheManager;->mInstance:Lcom/android/browser/model/WapCacheManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/browser/model/WapCacheManager;

    invoke-direct {v0}, Lcom/android/browser/model/WapCacheManager;-><init>()V

    sput-object v0, Lcom/android/browser/model/WapCacheManager;->mInstance:Lcom/android/browser/model/WapCacheManager;

    .line 22
    :cond_0
    sget-object v0, Lcom/android/browser/model/WapCacheManager;->mInstance:Lcom/android/browser/model/WapCacheManager;

    return-object v0
.end method

.method private removeOldestItem()V
    .locals 6

    .prologue
    .line 55
    iget-object v5, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/model/WapCacheManager$WapCacheItem;>;>;"
    const/4 v4, 0x0

    .line 57
    .local v4, oldestUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 58
    .local v3, oldestDate:Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/model/WapCacheManager$WapCacheItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/model/WapCacheManager$WapCacheItem;

    .line 62
    .local v1, item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    if-eqz v3, :cond_1

    iget-object v5, v1, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->lastVisited:Ljava/util/Date;

    invoke-virtual {v3, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #oldestUrl:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 64
    .restart local v4       #oldestUrl:Ljava/lang/String;
    iget-object v3, v1, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->lastVisited:Ljava/util/Date;

    goto :goto_0

    .line 67
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/model/WapCacheManager$WapCacheItem;>;"
    .end local v1           #item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    :cond_2
    if-eqz v4, :cond_3

    .line 68
    iget-object v5, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public getCachedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;

    .line 45
    .local v0, item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    .line 49
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->lastVisited:Ljava/util/Date;

    .line 50
    iget-object v1, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->htmlText:Ljava/lang/String;

    goto :goto_0
.end method

.method public insertData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "htmlData"

    .prologue
    .line 26
    iget-object v1, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;

    .line 27
    .local v0, item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;

    .end local v0           #item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    invoke-direct {v0, p0}, Lcom/android/browser/model/WapCacheManager$WapCacheItem;-><init>(Lcom/android/browser/model/WapCacheManager;)V

    .line 30
    .restart local v0       #item:Lcom/android/browser/model/WapCacheManager$WapCacheItem;
    iput-object p2, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->htmlText:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->lastVisited:Ljava/util/Date;

    .line 32
    iget-object v1, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/android/browser/model/WapCacheManager;->mCacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/android/browser/model/WapCacheManager;->removeOldestItem()V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->lastVisited:Ljava/util/Date;

    .line 39
    iput-object p2, v0, Lcom/android/browser/model/WapCacheManager$WapCacheItem;->htmlText:Ljava/lang/String;

    goto :goto_0
.end method
