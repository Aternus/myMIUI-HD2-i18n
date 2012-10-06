.class Lcom/miui/fmradio/FMRadioPlayerService$3;
.super Ljava/lang/Object;
.source "FMRadioPlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    const/4 v2, 0x0

    const-string v3, "RadioPlayerService"

    .line 270
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 273
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 290
    :pswitch_0
    const-string v0, "RadioPlayerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio focus change code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :pswitch_1
    const-string v0, "RadioPlayerService"

    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v2

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v1

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    .line 280
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->isMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v1, "com.miui.fmradio.muteui"

    const/4 v2, 0x0

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$3;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v1

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->turnOnOffFmAudio(ZI)V
    invoke-static {v0, v2, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$700(Lcom/miui/fmradio/FMRadioPlayerService;ZI)V

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
