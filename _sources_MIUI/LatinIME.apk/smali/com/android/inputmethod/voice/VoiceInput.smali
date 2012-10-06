.class public Lcom/android/inputmethod/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;,
        Lcom/android/inputmethod/voice/VoiceInput$UiListener;,
        Lcom/android/inputmethod/voice/VoiceInput$AlternatesBundleKeys;
    }
.end annotation


# static fields
.field private static final ALTERNATES_BUNDLE:Ljava/lang/String; = "alternates_bundle"

.field public static final DEFAULT:I = 0x0

.field private static final DEFAULT_RECOMMENDED_PACKAGES:Ljava/lang/String; = "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

.field public static final DELETE_SYMBOL:Ljava/lang/String; = " \u00d7 "

.field public static ENABLE_WORD_CORRECTIONS:Z = false

.field public static final ERROR:I = 0x3

.field private static final EXTRA_ALTERNATES:Ljava/lang/String; = "android.speech.extra.ALTERNATES"

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field public static final LISTENING:I = 0x1

.field private static final MAX_ALT_LIST_LENGTH:I = 0x6

.field private static final MSG_CLOSE_ERROR_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field public static final WORKING:I = 0x2


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

.field private mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V
    .locals 8
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v5, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 122
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 123
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 124
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 125
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 127
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 131
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$1;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/voice/VoiceInput$1;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-static {p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 173
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$1;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 174
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 175
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v5, v6}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 176
    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    .line 177
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "latin_ime_voice_input_recommended_packages"

    const-string v7, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    invoke-static {v5, v6, v7}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, recommendedPackages:Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    .line 186
    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 187
    .local v3, recommendedPackage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v5, v3}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3           #recommendedPackage:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    .line 191
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    const-string v6, "com.android.setupwizard"

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/VoiceInput;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .locals 1
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    const v0, 0x7f0c0074

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 536
    const v0, 0x7f0c0073

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 522
    :pswitch_1
    const v0, 0x7f0c007a

    goto :goto_0

    .line 526
    :pswitch_2
    if-nez p2, :cond_0

    const v0, 0x7f0c0075

    goto :goto_0

    .line 529
    :pswitch_3
    const v0, 0x7f0c0076

    goto :goto_0

    .line 531
    :pswitch_4
    const v0, 0x7f0c0077

    goto :goto_0

    .line 533
    :pswitch_5
    const v0, 0x7f0c0078

    goto :goto_0

    .line 535
    :pswitch_6
    const v0, 0x7f0c0079

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "com.google.android.voiceservice"

    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    .line 485
    :cond_0
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(IZ)V
    .locals 3
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 541
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->error(I)V

    .line 543
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 547
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 548
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    return-void
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cr"
    .parameter "i"
    .parameter "gservicesKey"
    .parameter "intentExtraKey"
    .parameter "defaultValue"

    .prologue
    .line 370
    const-wide/16 v1, -0x1

    .line 371
    .local v1, l:J
    invoke-static {p1, p3, p5}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 374
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 380
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    :cond_1
    return-void

    .line 375
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 376
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not parse value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 327
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 328
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/android/inputmethod/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v0, "android.speech.extra.ALTERNATES"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string v0, "android.speech.extra.MAX_RESULTS"

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "latin_ime_max_voice_results"

    invoke-static {v3, v4, v6}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 340
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 362
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 511
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 514
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 515
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 516
    return-void

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 385
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 262
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 263
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 265
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 266
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 267
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 269
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 270
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 271
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 273
    :cond_2
    return-void
.end method

.method public flushLogs()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->flush()V

    .line 472
    return-void
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    return v0
.end method

.method public getSelectionSpan()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 211
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 213
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 214
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 215
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1

    .line 218
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 219
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 222
    :cond_1
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 225
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 226
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 229
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 233
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 234
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 236
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 237
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 238
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 240
    :cond_2
    return-void
.end method

.method public incrementTextModificationInsertPunctuationCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 243
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 244
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 247
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 251
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 252
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 254
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_2

    .line 255
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 256
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 258
    :cond_2
    return-void
.end method

.method public isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/Whitelist;->matches(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public isRecommendedField(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/Whitelist;->matches(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public logInputEnded()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->inputEnded()V

    .line 468
    return-void
.end method

.method public logKeyboardWarningDialogCancel()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogCancel()V

    .line 452
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 444
    return-void
.end method

.method public logKeyboardWarningDialogOk()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogOk()V

    .line 448
    return-void
.end method

.method public logKeyboardWarningDialogShown()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogShown()V

    .line 440
    return-void
.end method

.method public logPunctuationHintDisplayed()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->punctuationHintDisplayed()V

    .line 460
    return-void
.end method

.method public logSwipeHintDisplayed()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->swipeHintDisplayed()V

    .line 456
    return-void
.end method

.method public logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .parameter "suggestion"
    .parameter "index"
    .parameter "wordSeparators"
    .parameter "ic"

    .prologue
    .line 430
    new-instance v6, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-direct {v6}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>()V

    .line 431
    .local v6, range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    invoke-static {p4, p3, v6}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, wordToBeReplaced:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 426
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 418
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 422
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 464
    return-void
.end method

.method public newView()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/inputmethod/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    .line 395
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 411
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x7f07000c
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V

    .line 281
    return-void
.end method

.method public setCursorPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 195
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 196
    return-void
.end method

.method public setSelectionSpan(I)V
    .locals 0
    .parameter "span"

    .prologue
    .line 203
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 204
    return-void
.end method

.method public startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V
    .locals 4
    .parameter "context"
    .parameter "swipe"

    .prologue
    .line 308
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 311
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, localeString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lcom/android/inputmethod/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 315
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 317
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V

    .line 318
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V

    .line 319
    return-void
.end method
