.class final Lcom/miui/player/MediaButtonIntentReceiver$1;
.super Landroid/os/Handler;
.source "MediaButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-wide/16 v1, -0x1

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    .end local p0
    :goto_0
    return-void

    .line 37
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/content/Context;

    #calls: Lcom/miui/player/MediaButtonIntentReceiver;->handleLongClick(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/miui/player/MediaButtonIntentReceiver;->access$000(Landroid/content/Context;)V

    .line 38
    invoke-static {v1, v2}, Lcom/miui/player/MediaButtonIntentReceiver;->access$102(J)J

    goto :goto_0

    .line 41
    .restart local p0
    :pswitch_1
    invoke-static {v1, v2}, Lcom/miui/player/MediaButtonIntentReceiver;->access$102(J)J

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
