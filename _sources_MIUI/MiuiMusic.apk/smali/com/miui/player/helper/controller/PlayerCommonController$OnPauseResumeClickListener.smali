.class Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;
.super Ljava/lang/Object;
.source "PlayerCommonController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/PlayerCommonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPauseResumeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/PlayerCommonController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/PlayerCommonController;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;->this$0:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/PlayerCommonController;Lcom/miui/player/helper/controller/PlayerCommonController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;-><init>(Lcom/miui/player/helper/controller/PlayerCommonController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 96
    .local v0, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->pause()V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlayerCommonController$OnPauseResumeClickListener;->this$0:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/PlayerCommonController;->refresh()V

    .line 107
    .end local v0           #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_0
    :goto_1
    return-void

    .line 100
    .restart local v0       #service:Lcom/miui/player/IMediaPlaybackService;
    :cond_1
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0           #service:Lcom/miui/player/IMediaPlaybackService;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
