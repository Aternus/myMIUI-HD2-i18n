.class public Lcom/miui/player/helper/DrawableProvider;
.super Ljava/lang/Object;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/DrawableProvider$DrawableWorker;,
        Lcom/miui/player/helper/DrawableProvider$DrawableClean;,
        Lcom/miui/player/helper/DrawableProvider$AlbumComputer;,
        Lcom/miui/player/helper/DrawableProvider$AsyncHandler;,
        Lcom/miui/player/helper/DrawableProvider$RequestHolder;,
        Lcom/miui/player/helper/DrawableProvider$ResponseHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_COUNT:I = 0x64

.field private static final MSG_GET_DRAWABLE_REQUEST:I = 0x2

.field private static final MSG_GET_DRAWABLE_RESPONSE:I = 0x1


# instance fields
.field private mAsyncHandler:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/DrawableProvider",
            "<TT;>.AsyncHandler;"
        }
    .end annotation
.end field

.field private mAsyncWorker:Lcom/miui/player/helper/AsyncWorker;

.field private mCacheBackup:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/miui/player/helper/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableCache:Lcom/miui/player/helper/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mWaiterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/player/helper/DrawableProvider",
            "<TT;>.RequestHolder;>;>;"
        }
    .end annotation
.end field

.field private mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider$DrawableWorker;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "defaultDrawable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/helper/DrawableProvider$DrawableWorker",
            "<TT;>;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    .local p1, worker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;,"Lcom/miui/player/helper/DrawableProvider$DrawableWorker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/DrawableProvider;->mEnabled:Z

    .line 177
    new-instance v0, Lcom/miui/player/helper/DrawableProvider$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/DrawableProvider$1;-><init>(Lcom/miui/player/helper/DrawableProvider;)V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    .line 50
    iput-object p2, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/LRUCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/DrawableProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/DrawableProvider;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/DrawableProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/DrawableProvider;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/miui/player/helper/DrawableProvider;->isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method private isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "drawable"

    .prologue
    .line 129
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 8
    .parameter
    .parameter "imageView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/widget/ImageView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    .local p1, info:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 142
    .local v1, isCached:Z
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    invoke-interface {v6, p1}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->asKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 144
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    if-nez v6, :cond_2

    .line 145
    :cond_0
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    :goto_0
    return v1

    .line 147
    :cond_2
    const/4 v4, 0x0

    .line 148
    .local v4, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-virtual {v6, v2}, Lcom/miui/player/helper/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 150
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 151
    const/4 v1, 0x1

    .line 152
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/miui/player/helper/DrawableProvider;->isDefauleDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 154
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    check-cast v4, Ljava/util/LinkedList;

    .line 169
    .restart local v4       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    :cond_3
    :goto_1
    if-eqz v4, :cond_1

    .line 170
    new-instance v5, Lcom/miui/player/helper/DrawableProvider$RequestHolder;

    invoke-direct {v5, p0, v2, p1, p2}, Lcom/miui/player/helper/DrawableProvider$RequestHolder;-><init>(Lcom/miui/player/helper/DrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 171
    .local v5, rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v5           #rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    :cond_4
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-virtual {v6, v2, v0}, Lcom/miui/player/helper/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v4, Ljava/util/LinkedList;

    .end local v4           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .restart local v4       #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncHandler:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 165
    .local v3, msg:Landroid/os/Message;
    new-instance v6, Lcom/miui/player/helper/DrawableProvider$RequestHolder;

    invoke-direct {v6, p0, v2, p1, p2}, Lcom/miui/player/helper/DrawableProvider$RequestHolder;-><init>(Lcom/miui/player/helper/DrawableProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v6, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncHandler:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;

    invoke-virtual {v6, v3}, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public quit()V
    .locals 5

    .prologue
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    const/4 v4, 0x0

    .line 77
    iget-boolean v2, p0, Lcom/miui/player/helper/DrawableProvider;->mEnabled:Z

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/player/helper/DrawableProvider;->mEnabled:Z

    .line 82
    iput-object v4, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncHandler:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;

    .line 83
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncWorker:Lcom/miui/player/helper/AsyncWorker;

    invoke-virtual {v2}, Lcom/miui/player/helper/AsyncWorker;->quit()V

    .line 84
    iput-object v4, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncWorker:Lcom/miui/player/helper/AsyncWorker;

    .line 86
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    .local v1, waiters:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-virtual {v2, v0}, Lcom/miui/player/helper/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    new-instance v3, Lcom/miui/player/helper/DrawableProvider$DrawableClean;

    invoke-direct {v3, p0}, Lcom/miui/player/helper/DrawableProvider$DrawableClean;-><init>(Lcom/miui/player/helper/DrawableProvider;)V

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/LRUCache;->traverse(Lcom/miui/player/helper/LRUCache$EntryVisitor;)V

    .line 93
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    .line 95
    iput-object v4, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    .line 97
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    .local p1, info:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    .line 114
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    invoke-interface {v2, p1}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->asKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 116
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-virtual {v2, v0}, Lcom/miui/player/helper/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 125
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/LRUCache;

    .line 120
    .local v1, tmp:Lcom/miui/player/helper/LRUCache;,"Lcom/miui/player/helper/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1, v0}, Lcom/miui/player/helper/LRUCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #tmp:Lcom/miui/player/helper/LRUCache;,"Lcom/miui/player/helper/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    move v2, v3

    .line 125
    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    .line 101
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    iget-object v1, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    invoke-virtual {v1}, Lcom/miui/player/helper/LRUCache;->clear()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/LRUCache;

    .line 105
    .local v0, tmp:Lcom/miui/player/helper/LRUCache;,"Lcom/miui/player/helper/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/player/helper/LRUCache;->clear()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 58
    .local p0, this:Lcom/miui/player/helper/DrawableProvider;,"Lcom/miui/player/helper/DrawableProvider<TT;>;"
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/LRUCache;

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/miui/player/helper/LRUCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/miui/player/helper/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    .line 63
    iget-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;

    new-instance v1, Lcom/miui/player/helper/DrawableProvider$AlbumComputer;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/DrawableProvider$AlbumComputer;-><init>(Lcom/miui/player/helper/DrawableProvider;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/LRUCache;->setComputer(Lcom/miui/player/helper/LRUCache$ValueComputer;)V

    .line 66
    :cond_1
    new-instance v0, Lcom/miui/player/helper/AsyncWorker;

    const-string v1, "DrawableProvider"

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncWorker:Lcom/miui/player/helper/AsyncWorker;

    .line 67
    new-instance v0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;

    iget-object v1, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncWorker:Lcom/miui/player/helper/AsyncWorker;

    invoke-virtual {v1}, Lcom/miui/player/helper/AsyncWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;-><init>(Lcom/miui/player/helper/DrawableProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/player/helper/DrawableProvider;->mAsyncHandler:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/DrawableProvider;->mEnabled:Z

    .line 69
    return-void
.end method
