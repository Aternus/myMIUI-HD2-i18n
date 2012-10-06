.class public Lcom/android/stk/StkDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    return-object v1
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 156
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    return-void
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 174
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/gsm/stk/Duration;)I

    move-result v0

    .line 175
    .local v0, dialogDuration:I
    if-nez v0, :cond_0

    .line 176
    const v0, 0x9c40

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0xd

    .line 95
    packed-switch p2, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 98
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 102
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 64
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 77
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/stk/StkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->setupAlert()V

    goto :goto_0

    .line 73
    :cond_1
    const v1, 0x7f020001

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 111
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 129
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 130
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 143
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    .line 123
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 137
    return-void
.end method
