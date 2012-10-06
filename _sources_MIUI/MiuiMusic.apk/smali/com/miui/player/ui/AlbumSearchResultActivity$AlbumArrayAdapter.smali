.class Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumArrayAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$100(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$100(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 115
    move-object v6, p2

    .line 116
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 117
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03001f

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 120
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$100(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 121
    .local v4, path:Ljava/lang/String;
    const v7, 0x7f0c0028

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, albumImageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    .line 124
    .local v2, isCached:Z
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 125
    .local v5, sbm:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_1

    .line 126
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 127
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    const/4 v2, 0x1

    .line 135
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    const v7, 0x7f0c0088

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 137
    .local v3, loadingBar:Landroid/widget/ProgressBar;
    if-nez v2, :cond_4

    .line 138
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 139
    const-string v7, "http"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 140
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8, v9, v9}, Lcom/miui/player/helper/AlbumManager;->getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 141
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 131
    .end local v3           #loadingBar:Landroid/widget/ProgressBar;
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #loadingBar:Landroid/widget/ProgressBar;
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    new-instance v7, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;

    iget-object v8, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Lcom/miui/player/ui/AlbumSearchResultActivity$1;)V

    iget-object v8, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$400(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;

    iget-object v10, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v9, v10, v0, v3, v4}, Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/widget/ImageView;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v4, v7, v8, v9}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)Z

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
