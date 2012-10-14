.class public Lcom/miui/player/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static final DOUBLE_PRESS_DELAY:I = 0x3e8

.field private static final LONG_PRESS_DELAY:I = 0x320

.field private static final MSG_LONGPRESS:I = 0x1

.field private static final MSG_RESETDOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.miui.player.MediaButtonIntentReceiver"

.field private static mHandler:Landroid/os/Handler;

.field private static sFirstDownTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    .line 32
    new-instance v0, Lcom/miui/player/MediaButtonIntentReceiver$1;

    invoke-direct {v0}, Lcom/miui/player/MediaButtonIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-static {p0}, Lcom/miui/player/MediaButtonIntentReceiver;->handleLongClick(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    sput-wide p0, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    return-wide p0
.end method

.method private static handDoubleClick(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "command"

    const-string v2, "previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    const-string v1, "com.miui.player.MediaButtonIntentReceiver"

    const-string v2, "handDoubleClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method private static handleLongClick(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    const-string v1, "com.miui.player.MediaButtonIntentReceiver"

    const-string v2, "handleLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method private static handleShortClick(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    const-string v1, "com.miui.player.MediaButtonIntentReceiver"

    const-string v2, "handleShortClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, intentAction:Ljava/lang/String;
    const-string v8, "com.miui.player.MediaButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "come in action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v8, "com.miui.player.MediaButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v8, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 78
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->toggleFadeOutMode(I)V

    .line 79
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v3, i:Landroid/content/Intent;
    const-string v8, "com.miui.player.musicservicecommand"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v8, "command"

    const-string v9, "pause"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 153
    .end local v3           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 85
    .local v7, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-nez v8, :cond_0

    .line 89
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 91
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 95
    .local v6, keycode:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 98
    .local v0, action:I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/miui/player/MediaButtonIntentReceiver;->abortBroadcast()V

    goto :goto_0

    .line 103
    :cond_2
    const/4 v1, 0x0

    .line 104
    .local v1, command:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 120
    :goto_1
    :pswitch_0
    const-string v8, "com.miui.player.MediaButtonIntentReceiver"

    const-string v9, "action = %d, repeatCount = %d, command = %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v8, "forbid_double_click"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 124
    .local v5, isForbidDoubleClick:Z
    if-eqz v1, :cond_0

    .line 125
    if-nez v5, :cond_6

    const-string v8, "togglepause"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 126
    if-nez v0, :cond_5

    .line 127
    sget-wide v8, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    .line 129
    sget-object v8, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x320

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/player/MediaButtonIntentReceiver;->abortBroadcast()V

    goto/16 :goto_0

    .line 106
    .end local v5           #isForbidDoubleClick:Z
    :pswitch_1
    const-string v1, "stop"

    .line 107
    goto :goto_1

    .line 110
    :pswitch_2
    const-string v1, "togglepause"

    .line 111
    goto :goto_1

    .line 113
    :pswitch_3
    const-string v1, "next"

    .line 114
    goto :goto_1

    .line 116
    :pswitch_4
    const-string v1, "previous"

    goto :goto_1

    .line 130
    .restart local v5       #isForbidDoubleClick:Z
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 131
    sget-object v8, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    invoke-static {p1}, Lcom/miui/player/MediaButtonIntentReceiver;->handDoubleClick(Landroid/content/Context;)V

    .line 133
    const-wide/16 v8, -0x1

    sput-wide v8, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    goto :goto_2

    .line 136
    :cond_5
    sget-wide v8, Lcom/miui/player/MediaButtonIntentReceiver;->sFirstDownTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 137
    invoke-static {p1}, Lcom/miui/player/MediaButtonIntentReceiver;->handleShortClick(Landroid/content/Context;)V

    .line 138
    sget-object v8, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    sget-object v8, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/miui/player/MediaButtonIntentReceiver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 143
    :cond_6
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 144
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/miui/player/MediaPlaybackService;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .restart local v3       #i:Landroid/content/Intent;
    const-string v8, "com.miui.player.musicservicecommand"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v8, "command"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 104
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
