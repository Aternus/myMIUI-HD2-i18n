.class Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/PlaylistBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/PlaylistBrowserAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/PlaylistBrowserAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/PlaylistBrowserAdapter;

    .line 50
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/PlaylistBrowserAdapter;

    #getter for: Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->access$000(Lcom/miui/player/model/PlaylistBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/PlaylistBrowserAdapter;

    #getter for: Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->access$000(Lcom/miui/player/model/PlaylistBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/model/BrowserSource;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/player/model/PlaylistBrowserAdapter;->PLAYLIST_COLUMNS:[Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lcom/miui/player/model/PlaylistBrowserAdapter;->mergedCursor(Landroid/database/Cursor;Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/player/model/PlaylistBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/PlaylistBrowserAdapter;

    #getter for: Lcom/miui/player/model/PlaylistBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/PlaylistBrowserAdapter;->access$000(Lcom/miui/player/model/PlaylistBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/miui/player/model/BrowserSource;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 61
    return-void
.end method
