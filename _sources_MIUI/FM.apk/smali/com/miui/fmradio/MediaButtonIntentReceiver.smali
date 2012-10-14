.class public Lcom/miui/fmradio/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.miui.fmradio.MediaButtonIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v8, "com.miui.fmradio.MediaButtonIntentReceiver"

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 16
    .local v3, intentAction:Ljava/lang/String;
    const-string v6, "com.miui.fmradio.MediaButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "come in action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 19
    .local v5, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v6, "com.miui.fmradio.MediaButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handle action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 27
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 31
    .local v4, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 32
    .local v0, action:I
    const/4 v1, 0x0

    .line 33
    .local v1, command:Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    .line 48
    :goto_1
    :pswitch_0
    const-string v6, "com.miui.fmradio.MediaButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actionEvent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v6, "com.miui.fmradio.MediaButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventRepeatCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v6, "com.miui.fmradio.MediaButtonIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v1, :cond_2

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 53
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/miui/fmradio/MediaButtonIntentReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 35
    :pswitch_1
    const-string v1, "com.miui.fmradio.quit"

    .line 36
    goto :goto_1

    .line 39
    :pswitch_2
    const-string v1, "com.miui.fmradio.mute"

    .line 40
    goto :goto_1

    .line 42
    :pswitch_3
    const-string v1, "com.miui.fmradio.seeknext"

    .line 43
    goto :goto_1

    .line 45
    :pswitch_4
    const-string v1, "com.miui.fmradio.seekprevious"

    goto :goto_1

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
