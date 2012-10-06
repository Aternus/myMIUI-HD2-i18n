.class public Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationHomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/NavigationHomeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailDataAdapter"
.end annotation


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/controller/NavigationHomeController;


# direct methods
.method protected constructor <init>(Lcom/android/browser/controller/NavigationHomeController;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;>;"
    iput-object p1, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    .line 186
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 281
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    if-nez p2, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    move-object v13, v0

    #getter for: Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v13}, Lcom/android/browser/controller/NavigationHomeController;->access$200(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 197
    .local v8, factory:Landroid/view/LayoutInflater;
    const v13, 0x7f030011

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 199
    .end local v8           #factory:Landroid/view/LayoutInflater;
    :cond_0
    const v13, 0x7f0d0039

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 200
    .local v12, text:Landroid/widget/TextView;
    const v13, 0x7f0d0037

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 201
    .local v9, image:Landroid/widget/ImageView;
    const v13, 0x7f0d0038

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 203
    .local v11, progressBar:Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_4

    .line 204
    const v13, 0x7f0d0036

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x6

    const/4 v15, 0x6

    const/16 v16, 0x6

    const/16 v17, 0x6

    invoke-virtual/range {v13 .. v17}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    .line 209
    .local v5, data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    iget-boolean v13, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->loadingInProgress:Z

    if-eqz v13, :cond_1

    .line 210
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    move-object v13, v0

    #getter for: Lcom/android/browser/controller/NavigationHomeController;->handler:Lcom/android/browser/controller/NavigationHomeController$EventHandler;
    invoke-static {v13}, Lcom/android/browser/controller/NavigationHomeController;->access$300(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/controller/NavigationHomeController$EventHandler;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1388

    invoke-virtual/range {v13 .. v16}, Lcom/android/browser/controller/NavigationHomeController$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :goto_0
    iget-object v13, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .end local v5           #data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    :goto_1
    return-object p2

    .line 219
    .restart local v5       #data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    :cond_1
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    invoke-static {}, Lcom/android/browser/controller/NavigationHomeController;->access$400()Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13

    .line 223
    :try_start_0
    invoke-static {}, Lcom/android/browser/controller/NavigationHomeController;->access$400()Ljava/util/HashMap;

    move-result-object v14

    iget-object v15, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 225
    invoke-static {}, Lcom/android/browser/controller/NavigationHomeController;->access$400()Ljava/util/HashMap;

    move-result-object v14

    iget-object v15, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 248
    .local v6, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 227
    .end local v6           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    const/4 v4, 0x0

    .line 229
    .local v4, bmp:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v14, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    const-string v15, "file:///android_asset/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    if-eqz v14, :cond_3

    .line 231
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->this$0:Lcom/android/browser/controller/NavigationHomeController;

    move-object v14, v0

    #getter for: Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-static {v14}, Lcom/android/browser/controller/NavigationHomeController;->access$200(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/ui/MiRenBrowserActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/browser/ui/MiRenBrowserActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 232
    .local v3, am:Landroid/content/res/AssetManager;
    iget-object v14, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    const-string v15, "file:///android_asset/"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 233
    .local v10, is:Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x4

    const/16 v16, 0x4

    invoke-static/range {v14 .. v16}, Lcom/android/browser/util/GraphicUtil;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 245
    .end local v3           #am:Landroid/content/res/AssetManager;
    .end local v10           #is:Ljava/io/InputStream;
    :goto_3
    :try_start_3
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    .restart local v6       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/android/browser/controller/NavigationHomeController;->access$400()Ljava/util/HashMap;

    move-result-object v14

    iget-object v15, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v14, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 248
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v14

    .line 235
    .restart local v4       #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v14

    move-object v7, v14

    .line 236
    .local v7, e:Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/android/browser/controller/NavigationHomeController;->access$500()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cannot load bitmap from assed"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 239
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    iget-object v14, v5, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x4

    const/16 v16, 0x4

    invoke-static/range {v14 .. v16}, Lcom/android/browser/util/GraphicUtil;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_3

    .line 254
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #data:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    :cond_4
    const v13, 0x7f0d0036

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    const v13, 0x7f0d0036

    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    const v13, 0x7f020002

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected resetData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;>;"
    iput-object p1, p0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->mDataList:Ljava/util/ArrayList;

    .line 190
    return-void
.end method
