.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;
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
    name = "OnShufflePlayClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 339
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #calls: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->hasPlayableTrack()Z
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$900(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800a0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
