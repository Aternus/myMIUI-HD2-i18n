.class Lcom/miui/player/helper/controller/AlbumViewController$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/AlbumViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController$1;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController$1;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh()V

    .line 467
    return-void
.end method
