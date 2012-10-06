.class Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/model/AlbumBrowserAdapter;


# direct methods
.method constructor <init>(Lcom/miui/player/model/AlbumBrowserAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    .line 61
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;->this$0:Lcom/miui/player/model/AlbumBrowserAdapter;

    #getter for: Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;
    invoke-static {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->access$000(Lcom/miui/player/model/AlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/miui/player/model/BrowserSource;->inititalizeByCursor(Landroid/database/Cursor;Z)V

    .line 68
    return-void
.end method
