.class Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;
.super Ljava/lang/Object;
.source "AlbumSearchResultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBitmapSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Lcom/miui/player/ui/AlbumSearchResultActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, group:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 269
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$100(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 270
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 271
    .local v2, sbm:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 275
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    .line 277
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$600(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #calls: Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$700(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    .line 282
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 301
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 279
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const-string v6, ""

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const v8, 0x7f0800cc

    invoke-virtual {v7, v8}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v5

    #setter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$502(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 287
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$500(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    iget-object v4, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$500(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    new-instance v5, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;

    invoke-direct {v5, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener$1;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 297
    new-instance v4, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Lcom/miui/player/ui/AlbumSearchResultActivity$1;)V

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$400(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;

    iget-object v7, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {v6, v7}, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-static {v3, v4, v5, v6}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)Z

    goto :goto_1
.end method
