.class Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;
.super Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowBitmapRunnable"
.end annotation


# instance fields
.field private final mLoadingView:Landroid/view/View;

.field private final mUrl:Ljava/lang/String;

.field private final mView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "v"
    .parameter "loadingView"
    .parameter "url"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    .line 188
    iput-object p3, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mLoadingView:Landroid/view/View;

    .line 189
    iput-object p4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 195
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mLoadingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, result:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 203
    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 205
    .local v1, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 208
    .local v3, tag:Ljava/lang/Object;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
