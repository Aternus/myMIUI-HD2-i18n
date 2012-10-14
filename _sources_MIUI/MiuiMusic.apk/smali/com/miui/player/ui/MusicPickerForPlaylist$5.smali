.class Lcom/miui/player/ui/MusicPickerForPlaylist$5;
.super Landroid/os/Handler;
.source "MusicPickerForPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicPickerForPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$5;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$5;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$5;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    iget-object v1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$5;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/model/MusicPickerAdapter;->getQueryHandler()Lcom/miui/player/model/MusicPickerAdapter$TrackQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/player/ui/MusicPickerForPlaylist;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    .line 252
    :cond_0
    return-void
.end method
