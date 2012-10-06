.class public Lcom/android/stk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# instance fields
.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/stk/TonePlayer;

.field settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

.field toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 39
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 40
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 45
    new-instance v0, Lcom/android/stk/ToneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$1;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/ToneDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 123
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 124
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    .line 125
    return-void
.end method

.method private sendResponse(I)V
    .locals 3
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/ToneDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 69
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, title:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->setContentView(I)V

    .line 74
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 80
    const v4, 0x108042d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_0
    new-instance v4, Lcom/android/stk/TonePlayer;

    invoke-direct {v4}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 87
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->tone:Lcom/android/internal/telephony/gsm/stk/Tone;

    invoke-virtual {v4, v5}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/gsm/stk/Tone;)V

    .line 88
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-static {v4}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/gsm/stk/Duration;)I

    move-result v1

    .line 89
    .local v1, timeout:I
    if-nez v1, :cond_0

    .line 90
    const/16 v1, 0x7d0

    .line 92
    :cond_0
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v5, 0xda

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/gsm/stk/ToneSettings;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/stk/ToneSettings;->vibrate:Z

    if-eqz v4, :cond_1

    .line 94
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 96
    :cond_1
    return-void

    .line 82
    .end local v1           #timeout:I
    :cond_2
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 104
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 105
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 106
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 112
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
