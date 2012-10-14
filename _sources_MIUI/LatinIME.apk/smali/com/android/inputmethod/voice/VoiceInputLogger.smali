.class public Lcom/android/inputmethod/voice/VoiceInputLogger;
.super Ljava/lang/Object;
.source "VoiceInputLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;


# instance fields
.field private final mBaseIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mHasLoggingInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/voice/VoiceInputLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 62
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    const-string v1, "app_name"

    const-string v2, "voiceime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;
    .locals 2
    .parameter "contextHint"

    .prologue
    .line 55
    const-class v0, Lcom/android/inputmethod/voice/VoiceInputLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 58
    :cond_0
    sget-object v1, Lcom/android/inputmethod/voice/VoiceInputLogger;->sVoiceInputLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasLoggingInfo()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    return v0
.end method

.method private newLoggingBroadcast(I)Landroid/content/Intent;
    .locals 2
    .parameter "event"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 70
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extra_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method private setHasLoggingInfo(Z)V
    .locals 0
    .parameter "hasLoggingInfo"

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 257
    invoke-static {p1}, Lcom/android/common/userhappiness/UserHappinessSignals;->setHasVoiceLoggingInfo(Z)V

    .line 258
    return-void
.end method


# virtual methods
.method public cancelDuringError()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public cancelDuringListening()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public cancelDuringWorking()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public error(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 158
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 159
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, i:Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->hasLoggingInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 77
    .local v0, i:Landroid/content/Intent;
    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 81
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public inputEnded()V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public keyboardWarningDialogCancel()V
    .locals 2

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public keyboardWarningDialogDismissed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public keyboardWarningDialogOk()V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public keyboardWarningDialogShown()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public punctuationHintDisplayed()V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public settingsWarningDialogCancel()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public settingsWarningDialogDismissed()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public settingsWarningDialogOk()V
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public settingsWarningDialogShown()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .locals 4
    .parameter "locale"
    .parameter "swipe"

    .prologue
    .line 165
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 166
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 167
    .local v0, i:Landroid/content/Intent;
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "swipe"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public swipeHintDisplayed()V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestionLength"
    .parameter "replacedPhraseLength"
    .parameter "index"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-direct {p0, v2}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 211
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, i:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "rlength"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v1, "before"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "after"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public textModifiedByTypingDeletion(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 199
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 200
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public textModifiedByTypingInsertion(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 181
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 182
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public textModifiedByTypingInsertionPunctuation(I)V
    .locals 3
    .parameter "length"

    .prologue
    .line 190
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 191
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public voiceInputDelivered(I)V
    .locals 2
    .parameter "length"

    .prologue
    .line 174
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 175
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, i:Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public voiceInputSettingDisabled()V
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public voiceInputSettingEnabled()V
    .locals 2

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
