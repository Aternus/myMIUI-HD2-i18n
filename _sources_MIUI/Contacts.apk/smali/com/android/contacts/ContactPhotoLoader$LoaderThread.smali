.class Lcom/android/contacts/ContactPhotoLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/ContactPhotoLoader;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPhotoLoader;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "resolver"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    .line 353
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    .line 349
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    .line 354
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 355
    return-void
.end method

.method private loadPhotosFromDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 378
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    #calls: Lcom/android/contacts/ContactPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactPhotoLoader;->access$200(Lcom/android/contacts/ContactPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 380
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 381
    .local v7, count:I
    if-nez v7, :cond_1

    .line 422
    :cond_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 386
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 388
    if-eqz v9, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    const/4 v8, 0x0

    .line 397
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    #getter for: Lcom/android/contacts/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactPhotoLoader;->access$300(Lcom/android/contacts/ContactPhotoLoader;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/contacts/ContactPhotoLoader;->access$400()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 403
    if-eqz v8, :cond_5

    .line 404
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 406
    .local v10, id:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 407
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    #calls: Lcom/android/contacts/ContactPhotoLoader;->cacheBitmap(J[B)V
    invoke-static {v0, v1, v2, v6}, Lcom/android/contacts/ContactPhotoLoader;->access$500(Lcom/android/contacts/ContactPhotoLoader;J[B)V

    .line 408
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 412
    .end local v6           #bytes:[B
    .end local v10           #id:Ljava/lang/Long;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 413
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 412
    :cond_5
    if-eqz v8, :cond_6

    .line 413
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 419
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #calls: Lcom/android/contacts/ContactPhotoLoader;->cacheBitmap(J[B)V
    invoke-static {v1, v2, v3, v11}, Lcom/android/contacts/ContactPhotoLoader;->access$500(Lcom/android/contacts/ContactPhotoLoader;J[B)V

    .line 419
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->loadPhotosFromDatabase()V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoLoader;

    #getter for: Lcom/android/contacts/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoLoader;->access$100(Lcom/android/contacts/ContactPhotoLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    return-void
.end method
