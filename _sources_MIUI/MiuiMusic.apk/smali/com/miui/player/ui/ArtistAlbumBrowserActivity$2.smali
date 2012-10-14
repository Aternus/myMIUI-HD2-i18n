.class Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;
.super Landroid/database/DataSetObserver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 516
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 517
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    #calls: Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->refreshHeader()V
    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$000(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    .line 518
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 522
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 523
    iget-object v0, p0, Lcom/miui/player/ui/ArtistAlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/ArtistAlbumBrowserActivity;

    #calls: Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->refreshHeader()V
    invoke-static {v0}, Lcom/miui/player/ui/ArtistAlbumBrowserActivity;->access$000(Lcom/miui/player/ui/ArtistAlbumBrowserActivity;)V

    .line 524
    return-void
.end method
