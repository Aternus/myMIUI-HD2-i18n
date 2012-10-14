.class public Lcom/android/voicedialer/VoiceDialerActivity;
.super Landroid/app/Activity;
.source "VoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    }
.end annotation


# static fields
.field private static final mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

.field private mHandler:Landroid/os/Handler;

.field private mMicFlasher:Ljava/lang/Runnable;

.field private mRecognizerThread:Ljava/lang/Thread;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-direct {v0}, Lcom/android/voicedialer/CommandRecognizerEngine;-><init>()V

    sput-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 249
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$3;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    .line 340
    return-void
.end method

.method static synthetic access$100(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/voicedialer/VoiceDialerActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->startNextTest()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/voicedialer/CommandRecognizerEngine;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->notifyText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private getArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p1, :cond_0

    move-object v1, v3

    .line 156
    :goto_0
    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app.voicedialer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method private static newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 160
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    return-void
.end method

.method private playSound(I)I
    .locals 7
    .parameter "toneType"

    .prologue
    const/16 v6, 0x12c

    .line 186
    const/4 v2, 0x1

    .line 189
    .local v2, msecDelay:I
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v4, :cond_0

    .line 190
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v4, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 191
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 195
    :cond_0
    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    const/16 v1, 0x96

    .line 198
    .local v1, VIBRATOR_TIME:I
    const/16 v0, 0x96

    .line 199
    .local v0, VIBRATOR_GUARD_TIME:I
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 200
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 201
    invoke-static {v2, v6}, Ljava/lang/StrictMath;->max(II)I

    move-result v2

    .line 205
    .end local v0           #VIBRATOR_GUARD_TIME:I
    .end local v1           #VIBRATOR_TIME:I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return v2
.end method

.method private startActivityHelp(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 605
    const-string v0, "microphone"

    invoke-direct {p0, v0}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "contacts"

    invoke-direct {p0, v0}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
    :goto_0
    return-void

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sentence"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/voicedialer/VoiceDialerActivity;->notifyText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startNextTest()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$2;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method private startWork()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 148
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 90
    const-string v0, "VoiceDialerActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    .line 93
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/voicedialer/VoiceDialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 96
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "id"
    .parameter "args"

    .prologue
    const v11, 0x7f040004

    const/high16 v10, 0x104

    .line 262
    const-string v8, "intents"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, [Landroid/content/Intent;

    move-object v0, v8

    check-cast v0, [Landroid/content/Intent;

    move-object v4, v0

    .line 264
    .local v4, intents:[Landroid/content/Intent;
    new-instance v2, Lcom/android/voicedialer/VoiceDialerActivity$4;

    invoke-direct {v2, p0, v4}, Lcom/android/voicedialer/VoiceDialerActivity$4;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;[Landroid/content/Intent;)V

    .line 277
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$5;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$5;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 289
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v6, Lcom/android/voicedialer/VoiceDialerActivity$6;

    invoke-direct {v6, p0, v4}, Lcom/android/voicedialer/VoiceDialerActivity$6;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;[Landroid/content/Intent;)V

    .line 303
    .local v6, positiveListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/android/voicedialer/VoiceDialerActivity$7;

    invoke-direct {v5, p0}, Lcom/android/voicedialer/VoiceDialerActivity$7;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 315
    .local v5, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    array-length v8, v4

    new-array v7, v8, [Ljava/lang/String;

    .line 316
    .local v7, sentences:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 317
    aget-object v8, v4, v3

    const-string v9, "sentence"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_0
    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 337
    iget-object v8, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v8

    .line 321
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "VoiceDialerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 619
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 99
    const-string v1, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 101
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 105
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    const-string v2, "contacts"

    invoke-direct {p0, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/CommandRecognizerEngine;->setContactsFile(Ljava/io/File;)V

    .line 106
    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {v1, p0, v4}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    .line 107
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    invoke-virtual {v1, v5}, Lcom/android/voicedialer/CommandRecognizerEngine;->setMinimizeResults(Z)V

    .line 108
    sget-object v1, Lcom/android/voicedialer/VoiceDialerActivity;->mCommandEngine:Lcom/android/voicedialer/CommandRecognizerEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/CommandRecognizerEngine;->setAllowOpenEntries(Z)V

    .line 111
    const v1, 0x103000b

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->setTheme(I)V

    .line 112
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->setTitle(I)V

    .line 113
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->setContentView(I)V

    .line 114
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-static {p0}, Lcom/android/voicedialer/RecognizerLogger;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f040010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    :cond_0
    iput-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;

    .line 123
    const-string v1, "microphone"

    invoke-direct {p0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, micDir:Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v1, Lcom/android/voicedialer/VoiceDialerTester;

    invoke-direct {v1, v0}, Lcom/android/voicedialer/VoiceDialerTester;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;

    .line 126
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->startNextTest()V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->startWork()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "VoiceDialerActivity"

    .line 210
    const-string v1, "VoiceDialerActivity"

    const-string v1, "onStop"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 215
    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;

    .line 218
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mRecognizerThread:Ljava/lang/Thread;

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 230
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 235
    iput-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 238
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 242
    invoke-virtual {p0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 243
    return-void

    .line 222
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 223
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop mRecognizerThread.join exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
