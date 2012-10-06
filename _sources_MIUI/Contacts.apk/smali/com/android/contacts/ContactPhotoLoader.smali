.class public Lcom/android/contacts/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoLoader$1;,
        Lcom/android/contacts/ContactPhotoLoader$LoaderThread;,
        Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final COLUMNS:[Ljava/lang/String;

.field private final mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultResourceId:I

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "defaultResourceId"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 128
    iput p2, p0, Lcom/android/contacts/ContactPhotoLoader;->mDefaultResourceId:I

    .line 129
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPhotoLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/contacts/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactPhotoLoader;J[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoLoader;->cacheBitmap(J[B)V

    return-void
.end method

.method private cacheBitmap(J[B)V
    .locals 5
    .parameter "id"
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-boolean v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return-void

    .line 300
    :cond_0
    new-instance v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;

    invoke-direct {v1, v3}, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/android/contacts/ContactPhotoLoader$1;)V

    .line 301
    .local v1, holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->state:I

    .line 302
    if-eqz p3, :cond_1

    .line 304
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 306
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;J)Z
    .locals 7
    .parameter "view"
    .parameter "photoId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;

    .line 167
    .local v1, holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    if-nez v1, :cond_1

    .line 168
    new-instance v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;

    .end local v1           #holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    invoke-direct {v1, v6}, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/android/contacts/ContactPhotoLoader$1;)V

    .line 169
    .restart local v1       #holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iput v4, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->state:I

    move v2, v4

    .line 191
    :goto_1
    return v2

    .line 170
    :cond_1
    iget v2, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 172
    iget-object v2, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_2

    .line 173
    iget v2, p0, Lcom/android/contacts/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move v2, v5

    .line 174
    goto :goto_1

    .line 177
    :cond_2
    iget-object v2, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 178
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v2, v5

    .line 180
    goto :goto_1

    .line 185
    :cond_3
    iput-object v6, v1, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method private obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 319
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 330
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 332
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;

    .line 333
    .local v0, holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->state:I

    if-nez v3, :cond_0

    .line 335
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;->state:I

    .line 336
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoLoader$BitmapHolder;
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private processLoadedImages()V
    .locals 6

    .prologue
    .line 277
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 278
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 280
    .local v4, view:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 281
    .local v2, photoId:J
    invoke-direct {p0, v4, v2, v3}, Lcom/android/contacts/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;J)Z

    move-result v1

    .line 282
    .local v1, loaded:Z
    if-eqz v1, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 287
    .end local v1           #loaded:Z
    .end local v2           #photoId:J
    .end local v4           #view:Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoLoader;->requestLoading()V

    .line 290
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 239
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoadingRequested:Z

    .line 240
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 269
    :goto_0
    return v0

    .line 250
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoadingRequested:Z

    .line 251
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoLoader;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    .line 254
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->start()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->requestLoading()V

    :cond_1
    move v0, v2

    .line 259
    goto :goto_0

    .line 263
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    if-nez v0, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoLoader;->processLoadedImages()V

    :cond_2
    move v0, v2

    .line 266
    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;J)V
    .locals 3
    .parameter "view"
    .parameter "photoId"

    .prologue
    .line 138
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 140
    iget v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;J)Z

    move-result v0

    .line 144
    .local v0, loaded:Z
    if-eqz v0, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    .line 219
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPaused:Z

    .line 226
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoLoader;->requestLoading()V

    .line 229
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoLoader;->pause()V

    .line 200
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->quit()Z

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mLoaderThread:Lcom/android/contacts/ContactPhotoLoader$LoaderThread;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 206
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 207
    return-void
.end method
