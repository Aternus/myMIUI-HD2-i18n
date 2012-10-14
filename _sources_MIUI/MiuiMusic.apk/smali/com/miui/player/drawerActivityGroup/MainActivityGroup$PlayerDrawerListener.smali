.class Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;
.super Ljava/lang/Object;
.source "MainActivityGroup.java"

# interfaces
.implements Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerDrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;-><init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)V

    return-void
.end method


# virtual methods
.method public allowSlide()Z
    .locals 1

    .prologue
    .line 434
    invoke-static {}, Lcom/miui/player/MusicUtils;->isMusicLoaded()Z

    move-result v0

    return v0
.end method

.method public endSlide(Z)V
    .locals 4
    .parameter "isClose"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$200(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    move-result-object v0

    if-nez p1, :cond_1

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateState(ZZ)V

    .line 413
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerChildClose()Z

    move-result v1

    #calls: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerSliding(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$300(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;ZZ)V

    .line 414
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    iget-boolean v0, v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mPlayAfterSlide:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    iput-boolean v2, v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mPlayAfterSlide:Z

    .line 416
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$400(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$400(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$400(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$400(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 412
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startSlide(Z)V
    .locals 1
    .parameter "isClose"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    #getter for: Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->access$200(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->startSlide()V

    .line 430
    return-void
.end method
