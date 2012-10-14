.class Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener$1;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener$1;->this$1:Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener$1;->this$1:Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;

    iget-object v0, v0, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    const/4 v1, 0x1

    #calls: Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh(I)V
    invoke-static {v0, v1}, Lcom/miui/player/helper/controller/AlbumViewController;->access$400(Lcom/miui/player/helper/controller/AlbumViewController;I)V

    .line 377
    return-void
.end method
