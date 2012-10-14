.class Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;
.super Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumSearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBitmapRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-direct {p0}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 225
    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$500(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-nez v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$500(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 232
    .local v4, result:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 233
    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 235
    .local v1, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #getter for: Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$600(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, outputStream:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 237
    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 240
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    #calls: Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V
    invoke-static {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->access$700(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    .line 241
    iget-object v5, p0, Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;->this$0:Lcom/miui/player/ui/AlbumSearchResultActivity;

    invoke-virtual {v5}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 242
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 243
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 245
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
