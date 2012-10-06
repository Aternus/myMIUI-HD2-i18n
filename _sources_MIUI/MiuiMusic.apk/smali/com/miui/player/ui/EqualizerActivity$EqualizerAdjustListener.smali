.class Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EqualizerAdjustListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/miui/player/ui/view/VerticalSeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 379
    if-nez p3, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    sget-object v2, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 384
    .local v2, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v2, :cond_0

    .line 388
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/EqualizerActivity;->notifyServiceEqualizer(Z)V

    .line 390
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 391
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 392
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    .local v0, i:I
    if-ltz v0, :cond_0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/miui/player/ui/view/VerticalSeekBar;->getProgress()I

    move-result v4

    invoke-static {}, Lcom/miui/player/ui/EqualizerActivity;->access$400()I

    move-result v5

    add-int v1, v4, v5

    .line 395
    .local v1, level:I
    iget-object v4, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    iget-object v4, v4, Lcom/miui/player/ui/EqualizerActivity;->mEqualizerSurface:Lcom/miui/player/ui/view/EqualizerView;

    invoke-virtual {v4, v0, v1}, Lcom/miui/player/ui/view/EqualizerView;->setBand(II)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v3, 0x0

    .line 402
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 403
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 404
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 405
    .local v0, custom:[I
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v2, v3, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 407
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 408
    iget-object v2, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v2, v3, v0, v3}, Lcom/miui/player/ui/EqualizerActivity;->refreshEqualizer(I[IZ)V

    .line 412
    .end local v0           #custom:[I
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/EqualizerActivity;->getCurrentConfigData()[I

    move-result-object v0

    .line 417
    .local v0, custom:[I
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-static {v1, v2, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->updateEqualizerConfig(Landroid/content/Context;I[I)I

    .line 419
    iget-object v1, p0, Lcom/miui/player/ui/EqualizerActivity$EqualizerAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/EqualizerActivity;->saveEqualizerConfigId(I)V

    .line 420
    return-void
.end method
