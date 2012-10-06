.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NowplayingBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    .line 327
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$700(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 328
    const-string v0, "com.miui.music.SHUFFLE_PLAY_PREPARED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$800(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->onQueueChanged()V

    .line 332
    :cond_0
    return-void
.end method
