.class Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;
.super Ljava/lang/Object;
.source "TimeIndicatorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/TimeIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShuffleModeClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/TimeIndicatorController;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/TimeIndicatorController;Lcom/miui/player/helper/controller/TimeIndicatorController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;-><init>(Lcom/miui/player/helper/controller/TimeIndicatorController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 174
    sget-object v2, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 175
    .local v2, s:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v2, :cond_0

    .line 177
    :try_start_0
    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I

    move-result v0

    .line 178
    .local v0, mode:I
    const/4 v1, 0x0

    .line 179
    .local v1, newMode:I
    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    invoke-interface {v2, v1}, Lcom/miui/player/IMediaPlaybackService;->setShuffleMode(I)V

    .line 191
    iget-object v3, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refreshShuffleImage()V

    .line 195
    .end local v0           #mode:I
    .end local v1           #newMode:I
    :cond_0
    :goto_1
    return-void

    .line 181
    .restart local v0       #mode:I
    .restart local v1       #newMode:I
    :pswitch_0
    const/4 v1, 0x1

    .line 182
    iget-object v3, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    const v4, 0x7f0800b0

    #calls: Lcom/miui/player/helper/controller/TimeIndicatorController;->showToast(I)V
    invoke-static {v3, v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$800(Lcom/miui/player/helper/controller/TimeIndicatorController;I)V

    goto :goto_0

    .line 192
    .end local v0           #mode:I
    .end local v1           #newMode:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 185
    .restart local v0       #mode:I
    .restart local v1       #newMode:I
    :pswitch_1
    const/4 v1, 0x0

    .line 186
    iget-object v3, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    const v4, 0x7f0800b1

    #calls: Lcom/miui/player/helper/controller/TimeIndicatorController;->showToast(I)V
    invoke-static {v3, v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$800(Lcom/miui/player/helper/controller/TimeIndicatorController;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
