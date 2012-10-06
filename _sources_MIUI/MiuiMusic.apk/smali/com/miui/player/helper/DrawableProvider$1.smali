.class Lcom/miui/player/helper/DrawableProvider$1;
.super Landroid/os/Handler;
.source "DrawableProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/DrawableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/DrawableProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/DrawableProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$1;,"Lcom/miui/player/helper/DrawableProvider.1;"
    iput-object p1, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 180
    .local p0, this:Lcom/miui/player/helper/DrawableProvider$1;,"Lcom/miui/player/helper/DrawableProvider.1;"
    iget v9, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 181
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;

    .line 182
    .local v2, ih:Lcom/miui/player/helper/DrawableProvider$ResponseHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.ResponseHolder;"
    iget-object v0, v2, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 183
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v4, v2, Lcom/miui/player/helper/DrawableProvider$ResponseHolder;->mKey:Ljava/lang/String;

    .line 185
    .local v4, key:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 219
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #ih:Lcom/miui/player/helper/DrawableProvider$ResponseHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.ResponseHolder;"
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v2       #ih:Lcom/miui/player/helper/DrawableProvider$ResponseHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.ResponseHolder;"
    .restart local v4       #key:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;
    invoke-static {v9}, Lcom/miui/player/helper/DrawableProvider;->access$000(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/LRUCache;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 193
    iget-object v9, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mDrawableCache:Lcom/miui/player/helper/LRUCache;
    invoke-static {v9}, Lcom/miui/player/helper/DrawableProvider;->access$000(Lcom/miui/player/helper/DrawableProvider;)Lcom/miui/player/helper/LRUCache;

    move-result-object v9

    invoke-virtual {v9, v4, v0}, Lcom/miui/player/helper/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v9, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/miui/player/helper/DrawableProvider;->access$100(Lcom/miui/player/helper/DrawableProvider;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 196
    .local v5, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    if-eqz v5, :cond_0

    .line 197
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/helper/DrawableProvider$RequestHolder;

    .line 198
    .local v6, rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    iget-object v3, v6, Lcom/miui/player/helper/DrawableProvider$RequestHolder;->mImageView:Landroid/widget/ImageView;

    .line 199
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 200
    .local v7, tag:Ljava/lang/Object;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 205
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v6           #rh:Lcom/miui/player/helper/DrawableProvider$RequestHolder;,"Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;"
    .end local v7           #tag:Ljava/lang/Object;
    :cond_3
    iget-object v9, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mWaiterMap:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/miui/player/helper/DrawableProvider;->access$100(Lcom/miui/player/helper/DrawableProvider;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/miui/player/helper/DrawableProvider<TT;>.RequestHolder;>;"
    :cond_4
    iget-object v9, p0, Lcom/miui/player/helper/DrawableProvider$1;->this$0:Lcom/miui/player/helper/DrawableProvider;

    #getter for: Lcom/miui/player/helper/DrawableProvider;->mCacheBackup:Ljava/lang/ref/SoftReference;
    invoke-static {v9}, Lcom/miui/player/helper/DrawableProvider;->access$200(Lcom/miui/player/helper/DrawableProvider;)Ljava/lang/ref/SoftReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/player/helper/LRUCache;

    .line 213
    .local v8, tmp:Lcom/miui/player/helper/LRUCache;,"Lcom/miui/player/helper/LRUCache<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v8, :cond_0

    .line 214
    invoke-virtual {v8, v4, v0}, Lcom/miui/player/helper/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
