.class Lcom/miui/player/helper/DrawableProvider$AsyncHandler;
.super Landroid/os/Handler;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/DrawableProvider;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/DrawableProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 250
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;,"Lcom/miui/player/helper/DrawableProvider<TT;>.AsyncHandler;"
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$AsyncHandler;,"Lcom/miui/player/helper/DrawableProvider<TT;>.AsyncHandler;"
    const/4 v6, 0x1

    .line 256
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 257
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/miui/player/helper/DrawableProvider$RequestHolder;

    .line 258
    .local v3, rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    iget-object v0, v3, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mInfo:Ljava/lang/Object;

    .line 259
    .local v0, info:Ljava/lang/Object;,"TT;"
    iget-object v1, v3, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mKey:Ljava/lang/String;

    .line 261
    .local v1, key:Ljava/lang/String;
    const/4 v2, 0x0

    .line 262
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$300(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->needFindFromDB(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$300(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$300(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->needFindFromFile(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 266
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWorker:Lcom/miui/player/helper/DrawableProvider$DrawableWorker;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$300(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/DrawableProvider$DrawableWorker;

    move-result-object v4

    invoke-interface {v4, v0, v6}, Lcom/miui/player/helper/DrawableProvider$DrawableWorker;->getDrawable(Ljava/lang/Object;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 269
    :cond_1
    if-eqz v2, :cond_2

    .line 270
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$400(Lcom/miui/player/helper/DrawableProvider;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 271
    new-instance v4, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;

    iget-object v5, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    invoke-direct {v4, v5, v1, v2}, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;-><init>(Lcom/miui/player/helper/DrawableProvider;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v4, p0, Lcom/miui/player/helper/DrawableProvider$AsyncHandler;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/player/helper/DrawableProvider;->access$400(Lcom/miui/player/helper/DrawableProvider;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    .end local v0           #info:Ljava/lang/Object;,"TT;"
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #ret:Landroid/graphics/drawable/Drawable;
    .end local v3           #rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    :cond_2
    return-void
.end method
