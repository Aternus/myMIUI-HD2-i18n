.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$3;
.super Landroid/content/BroadcastReceiver;
.source "NowplayingBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$3;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const-string v1, "nowplaying_bar"

    const-string v2, "who"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$3;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$700(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 419
    :cond_0
    return-void
.end method
