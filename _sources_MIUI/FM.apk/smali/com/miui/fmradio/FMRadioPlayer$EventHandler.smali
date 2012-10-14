.class Lcom/miui/fmradio/FMRadioPlayer$EventHandler;
.super Landroid/os/Handler;
.source "FMRadioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final FM_EVENT_AUDIO_PATH_CHANGED:I = 0xb

.field private static final FM_EVENT_CMD_ALREADY_DONE:I = 0x1

.field private static final FM_EVENT_CMD_DONE:I = 0x0

.field private static final FM_EVENT_CMD_NOT_SUPPORTED:I = 0x2

.field private static final FM_EVENT_HARDWARE_ERR:I = 0xa

.field private static final FM_EVENT_MONO_STEREO_MODE_CHANGED:I = 0x3


# instance fields
.field private mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayer;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FMRadioPlayer;Lcom/miui/fmradio/FMRadioPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->this$0:Lcom/miui/fmradio/FMRadioPlayer;

    .line 128
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    iput-object p2, p0, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    .line 130
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v2, "RadioPlayer"

    .line 134
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    #getter for: Lcom/miui/fmradio/FMRadioPlayer;->mNativeContext:I
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayer;->access$000(Lcom/miui/fmradio/FMRadioPlayer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "RadioPlayer"

    const-string v0, "FM Radio Core with unhandled events !"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    :sswitch_0
    return-void

    .line 139
    :cond_0
    const-string v0, "RadioPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 162
    const-string v0, "RadioPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :sswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    #getter for: Lcom/miui/fmradio/FMRadioPlayer;->mOnCommandCompleteListener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayer;->access$100(Lcom/miui/fmradio/FMRadioPlayer;)Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    const-string v0, "RadioPlayer"

    const-string v0, "Command listener is not registered!"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioPlayer$EventHandler;->mFMRadioPlayer:Lcom/miui/fmradio/FMRadioPlayer;

    #getter for: Lcom/miui/fmradio/FMRadioPlayer;->mOnCommandCompleteListener:Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioPlayer;->access$100(Lcom/miui/fmradio/FMRadioPlayer;)Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/fmradio/FMRadioPlayer$OnCommandCompleteListener;->onCommandComplete(IILjava/lang/Object;)V

    goto :goto_0

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method
