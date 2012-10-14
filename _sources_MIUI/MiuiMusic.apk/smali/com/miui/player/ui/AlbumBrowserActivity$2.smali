.class Lcom/miui/player/ui/AlbumBrowserActivity$2;
.super Landroid/database/DataSetObserver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 604
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 605
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #calls: Lcom/miui/player/ui/AlbumBrowserActivity;->refreshHeader()V
    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$400(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    .line 606
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 611
    iget-object v0, p0, Lcom/miui/player/ui/AlbumBrowserActivity$2;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #calls: Lcom/miui/player/ui/AlbumBrowserActivity;->refreshHeader()V
    invoke-static {v0}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$400(Lcom/miui/player/ui/AlbumBrowserActivity;)V

    .line 612
    return-void
.end method
