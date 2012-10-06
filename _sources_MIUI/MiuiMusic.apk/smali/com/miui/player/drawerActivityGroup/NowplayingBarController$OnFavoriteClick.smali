.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;
.super Ljava/lang/Object;
.source "NowplayingBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFavoriteClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 308
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v1

    .line 310
    .local v1, id:J
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handleLocalClick(Landroid/content/Context;J)V

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$700(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, i:Landroid/content/Intent;
    const-string v3, "who"

    const-string v4, "nowplaying_bar"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    return-void

    .line 313
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handlOnlineClick(Landroid/content/Context;J)V

    goto :goto_0
.end method
