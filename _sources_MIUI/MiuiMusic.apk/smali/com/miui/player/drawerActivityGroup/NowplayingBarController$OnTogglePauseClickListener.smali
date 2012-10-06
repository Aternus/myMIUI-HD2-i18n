.class Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;
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
    name = "OnTogglePauseClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;


# direct methods
.method public constructor <init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 359
    invoke-static {}, Lcom/miui/player/MusicUtils;->isOneShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I
    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$1000(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$800(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$800(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->onOperationClick(Landroid/view/View;)V

    .line 367
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$800(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->isClockwise()Z

    move-result v0

    .line 368
    .local v0, clockwise:Z
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    iget-object v2, v2, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mRotateSwitchAnimationChain:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    #getter for: Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->access$600(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->startAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 373
    .end local v0           #clockwise:Z
    :pswitch_1
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 374
    .local v1, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v1, :cond_2

    .line 376
    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;->this$0:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    goto :goto_0

    .line 379
    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v2

    goto :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
