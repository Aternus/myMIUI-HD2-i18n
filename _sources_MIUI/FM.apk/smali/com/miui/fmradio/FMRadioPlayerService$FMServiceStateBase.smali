.class Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
.super Ljava/lang/Object;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMServiceStateBase"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceStateBase"


# instance fields
.field protected curState:I

.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 400
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 401
    iput v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    .line 402
    return-void
.end method


# virtual methods
.method protected close()Z
    .locals 3

    .prologue
    .line 410
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method protected curServiceState()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    return v0
.end method

.method protected getAudioRouting()I
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    iget-object v1, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_fm_audio_routing"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v0, v1}, Lcom/miui/fmradio/FMRadioPlayerService;->access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 454
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    return v0
.end method

.method protected getVolume()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mVolume:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$800(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v0

    return v0
.end method

.method protected isMute()Z
    .locals 3

    .prologue
    .line 444
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mute is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioPlayerService;->access$900(Lcom/miui/fmradio/FMRadioPlayerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->misMuted:Z
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayerService;->access$900(Lcom/miui/fmradio/FMRadioPlayerService;)Z

    move-result v0

    return v0
.end method

.method protected open()Z
    .locals 3

    .prologue
    .line 405
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method protected prepare()Z
    .locals 3

    .prologue
    .line 415
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method protected seek(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    .line 425
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method protected setMute(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 439
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method protected setVolume(I)Z
    .locals 3
    .parameter "volume"

    .prologue
    .line 430
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method protected tune(I)Z
    .locals 3
    .parameter "freq"

    .prologue
    .line 420
    const-string v0, "ServiceStateBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SM State is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->curState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v0, 0x0

    return v0
.end method
