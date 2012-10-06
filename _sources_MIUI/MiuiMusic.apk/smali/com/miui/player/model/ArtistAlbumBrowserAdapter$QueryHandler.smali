.class Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ArtistAlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/ArtistAlbumBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/ArtistAlbumBrowserAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    .line 55
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 60
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p3, p2}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/ArtistAlbumBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/ArtistAlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/ArtistAlbumBrowserAdapter;->access$000(Lcom/miui/player/model/ArtistAlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/miui/player/model/BrowserSource;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 65
    return-void
.end method
