.class Lcom/miui/player/ui/MusicPickerForPlaylist$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 239
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$4;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$4;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$100(Lcom/miui/player/ui/MusicPickerForPlaylist;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    return-void
.end method
