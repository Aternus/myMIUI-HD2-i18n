.class public Lcom/android/inputmethod/latin/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
.implements Lcom/android/inputmethod/voice/VoiceInput$UiListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$9;,
        Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;,
        Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;,
        Lcom/android/inputmethod/latin/LatinIME$VoiceResults;
    }
.end annotation


# static fields
.field private static final CPS_BUFFER_SIZE:I = 0x10

.field static final DEBUG:Z = false

.field public static final DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES:Ljava/lang/String; = "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field static final ENABLE_VOICE_BUTTON:Z = true

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final KEYCODE_ENTER:I = 0xa

.field static final KEYCODE_PERIOD:I = 0x2e

.field static final KEYCODE_SPACE:I = 0x20

.field private static final MSG_START_TUTORIAL:I = 0x1

.field private static final MSG_UPDATE_OLD_SUGGESTIONS:I = 0x4

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x2

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final MSG_VOICE_RESULTS:I = 0x3

.field private static final PERF_DEBUG:Z = false

.field private static final POS_METHOD:I = 0x0

.field private static final POS_SETTINGS:I = 0x1

.field private static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field private static final PREF_AUTO_COMPLETE:Ljava/lang/String; = "auto_complete"

.field private static final PREF_HAS_USED_VOICE_INPUT:Ljava/lang/String; = "has_used_voice_input"

.field private static final PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE:Ljava/lang/String; = "has_used_voice_input_unsupported_locale"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field private static final PREF_OBEY_HAPTIC:Ljava/lang/String; = "obey_haptic"

.field private static final PREF_POPUP_ON:Ljava/lang/String; = "popup_on"

.field private static final PREF_QUICK_FIXES:Ljava/lang/String; = "quick_fixes"

.field private static final PREF_RECORRECTION_ENABLED:Ljava/lang/String; = "recorrection_enabled"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field private static final PREF_SHOW_SUGGESTIONS:Ljava/lang/String; = "show_suggestions"

.field private static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"

.field private static final QUICK_PRESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "LatinIME"

.field static final TRACE:Z = false

.field static final VOICE_INSTALLED:Z = true


# instance fields
.field private final FX_VOLUME:F

.field private mAfterVoiceInput:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCap:Z

.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

.field private mAutoSpace:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private final mBigramSuggestionEnabled:Z

.field private mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

.field private mCandidateViewContainer:Landroid/widget/LinearLayout;

.field private mCapsLock:Z

.field private mCommittedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposing:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mEnableVoice:Z

.field private mEnableVoiceButton:Z

.field private mEnteredText:Ljava/lang/CharSequence;

.field mHandler:Landroid/os/Handler;

.field private mHasDictionary:Z

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHints:Lcom/android/inputmethod/latin/Hints;

.field private mImmediatelyAfterVoiceInput:Z

.field private mInputLocale:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mIsShowingHint:Z

.field private mJustAccepted:Z

.field private mJustAddedAutoSpace:Z

.field private mJustRevertedSeparator:Ljava/lang/CharSequence;

.field mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLocaleSupportedForVoiceInput:Z

.field private mLongPressDelay:I

.field private mObeyHapticFeedback:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPasswordText:Z

.field private mPopupOn:Z

.field private mPredicting:Z

.field private mPredictionOn:Z

.field private mQuickFixes:Z

.field private mReCorrectionEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognizing:Z

.field private mRefreshKeyboardRequired:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSentenceSeparators:Ljava/lang/String;

.field private mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

.field private mShowSuggestions:Z

.field private mShowingVoiceSuggestions:Z

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestPuncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestPuncs:Ljava/lang/String;

.field private mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

.field private mSystemLocale:Ljava/lang/String;

.field private mTutorial:Lcom/android/inputmethod/latin/Tutorial;

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mVibrateOn:Z

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private mVoiceOnPrimary:Z

.field private mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private mWord:Lcom/android/inputmethod/latin/WordComposer;

.field private mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field

.field mWordSeparators:Ljava/lang/String;

.field private mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBigramSuggestionEnabled:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    .line 234
    new-instance v0, Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    .line 235
    new-instance v0, Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    .line 241
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->FX_VOLUME:F

    .line 248
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/LatinIME$1;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    .line 2353
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$7;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$7;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2623
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    return-void
.end method

.method private abortCorrection(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 1388
    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1390
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1392
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/Tutorial;)Lcom/android/inputmethod/latin/Tutorial;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/inputmethod/latin/LatinIME;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsShowingHint:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/inputmethod/latin/LatinIME;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    return-object v0
.end method

.method private addToBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2137
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2138
    return-void
.end method

.method private addToDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2134
    return-void
.end method

.method private applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z
    .locals 11
    .parameter "touching"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2057
    const/4 v3, 0x0

    .line 2058
    .local v3, foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v1, 0x0

    .line 2059
    .local v1, alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;

    .line 2060
    .local v2, entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2061
    instance-of v6, v2, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    if-eqz v6, :cond_1

    .line 2062
    move-object v0, v2

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    move-object v6, v0

    #getter for: Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;
    invoke-static {v6}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->access$1100(Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v3

    .line 2064
    :cond_1
    move-object v1, v2

    .line 2069
    .end local v2           #entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    :cond_2
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2072
    :cond_3
    new-instance v3, Lcom/android/inputmethod/latin/WordComposer;

    .end local v3           #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    invoke-direct {v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 2073
    .restart local v3       #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 2074
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    new-array v7, v10, [I

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v9

    invoke-virtual {v3, v6, v7}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 2073
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2078
    :cond_4
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2081
    .end local v4           #i:I
    :cond_5
    if-nez v3, :cond_6

    if-eqz v1, :cond_9

    .line 2082
    :cond_6
    if-nez v1, :cond_7

    .line 2083
    new-instance v1, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    .end local v1           #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v6, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v6, v3}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2085
    .restart local v1       #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showCorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V

    .line 2086
    if-eqz v3, :cond_8

    .line 2087
    new-instance v6, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v6, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    :goto_1
    move v6, v10

    .line 2093
    :goto_2
    return v6

    .line 2089
    :cond_8
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    goto :goto_1

    :cond_9
    move v6, v9

    .line 2093
    goto :goto_2
.end method

.method private applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z
    .locals 9
    .parameter "touching"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2025
    iget-object v5, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2026
    .local v3, selectedWord:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2027
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2029
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2030
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2031
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2034
    .local v4, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v5, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2035
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2036
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2037
    .local v2, origSugg:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, capsSugg:Ljava/lang/String;
    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2035
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2042
    .end local v0           #capsSugg:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #origSugg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4, v8, v7, v7}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2043
    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    move v5, v7

    .line 2046
    .end local v4           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_1
    return v5

    :cond_2
    move v5, v8

    goto :goto_1
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 4
    .parameter "suggestion"
    .parameter "frequencyDelta"
    .parameter "addToBigramDictionary"

    .prologue
    .line 2146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return-void

    .line 2150
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 2154
    :cond_2
    if-eqz p1, :cond_0

    .line 2155
    if-nez p3, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/AutoDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2158
    :cond_4
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/inputmethod/latin/AutoDictionary;->addWord(Ljava/lang/String;I)V

    .line 2161
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v1, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2164
    .local v0, prevWord:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2165
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkReCorrectionOnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 694
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 700
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 714
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 701
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 702
    .local v1, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 703
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 704
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 706
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 707
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 710
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_0
.end method

.method private checkTutorial(Ljava/lang/String;)V
    .locals 1
    .parameter "privateImeOptions"

    .prologue
    .line 2409
    if-nez p1, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return-void

    .line 2410
    :cond_1
    const-string v0, "com.android.setupwizard:ShowTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2411
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->startTutorial()V

    goto :goto_0

    .line 2412
    :cond_2
    const-string v0, "com.android.setupwizard:HideTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_0
.end method

.method private clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1759
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1760
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "inputConnection"

    .prologue
    const/4 v1, 0x1

    .line 1036
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_2

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 1038
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1043
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1044
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1046
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1048
    :cond_2
    return-void
.end method

.method private commitVoiceInput()V
    .locals 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1021
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1023
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    .line 1024
    return-void
.end method

.method private doubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1106
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1108
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1109
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1110
    .local v1, lastThree:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1113
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1114
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1115
    const-string v2, ". "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1116
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1117
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1118
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z
    .locals 1
    .parameter "fieldContext"

    .prologue
    .line 2340
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPasswordText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->isBlacklistedField(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 3
    .parameter "ic"
    .parameter "attr"

    .prologue
    .line 1065
    const/4 v0, 0x0

    .line 1066
    .local v0, caps:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1067
    .local v1, ei:Landroid/view/inputmethod/EditorInfo;
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_0

    .line 1068
    iget v2, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {p1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 1070
    :cond_0
    return v0
.end method

.method static getDictionary(Landroid/content/res/Resources;)[I
    .locals 13
    .parameter "res"

    .prologue
    const-string v12, "LatinIME"

    .line 407
    const-class v10, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v10}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, packageName:Ljava/lang/String;
    const v10, 0x7f050003

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 409
    .local v9, xrp:Landroid/content/res/XmlResourceParser;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v4, dictionaries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 413
    .local v1, current:I
    :goto_0
    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    .line 414
    const/4 v10, 0x2

    if-ne v1, v10, :cond_0

    .line 415
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, tag:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 417
    const-string v10, "part"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 418
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, dictFileName:Ljava/lang/String;
    const-string v10, "raw"

    invoke-virtual {p0, v3, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v3           #dictFileName:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    .line 424
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 426
    .end local v1           #current:I
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 427
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "LatinIME"

    const-string v10, "Dictionary XML parsing failure"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    .local v0, count:I
    new-array v2, v0, [I

    .line 434
    .local v2, dict:[I
    const/4 v6, 0x0

    .end local p0
    .local v6, i:I
    :goto_2
    if-ge v6, v0, :cond_2

    .line 435
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v2, v6

    .line 434
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 428
    .end local v0           #count:I
    .end local v2           #dict:[I
    .end local v6           #i:I
    .restart local p0
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 429
    .local v5, e:Ljava/io/IOException;
    const-string v10, "LatinIME"

    const-string v10, "Dictionary XML IOException"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    .end local v5           #e:Ljava/io/IOException;
    .end local p0
    .restart local v0       #count:I
    .restart local v2       #dict:[I
    .restart local v6       #i:I
    :cond_2
    return-object v2
.end method

.method private getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .locals 5
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1796
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 1798
    .local v0, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-object v0
.end method

.method private handleBackspace()V
    .locals 9

    .prologue
    const/16 v8, 0x43

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1289
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v4, :cond_1

    .line 1290
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    iget-object v4, v4, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1292
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->revertVoiceInput()V

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    const/4 v0, 0x0

    .line 1296
    .local v0, deleteChar:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1297
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1299
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1301
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v4, :cond_2

    .line 1304
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceInput;->getCursorPos()I

    move-result v4

    if-lez v4, :cond_2

    .line 1307
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceInput;->getSelectionSpan()I

    move-result v4

    move v1, v4

    .line 1309
    .local v1, deleteLen:I
    :goto_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4, v1}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1313
    .end local v1           #deleteLen:I
    :cond_2
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v4, :cond_6

    .line 1314
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1315
    .local v3, length:I
    if-lez v3, :cond_5

    .line 1316
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    sub-int v5, v3, v7

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1317
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 1318
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1319
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1320
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 1322
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 1329
    .end local v3           #length:I
    :goto_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateShiftKeyState()V

    .line 1330
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 1331
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v4

    sget-object v5, Lcom/android/inputmethod/latin/TextEntryState$State;->UNDO_COMMIT:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v4, v5, :cond_7

    .line 1332
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Z)V

    .line 1333
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_4
    move v1, v7

    .line 1307
    goto :goto_1

    .line 1324
    .restart local v3       #length:I
    :cond_5
    invoke-interface {v2, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    .line 1327
    .end local v3           #length:I
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 1335
    :cond_7
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1336
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1354
    :cond_8
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1355
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1337
    :cond_9
    if-eqz v0, :cond_8

    .line 1338
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1346
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Z)V

    goto :goto_3

    .line 1348
    :cond_a
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1349
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_8

    .line 1350
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_3
.end method

.method private handleCharacter(I[I)V
    .locals 7
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1395
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v3, :cond_0

    .line 1396
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->commitVoiceInput()V

    .line 1399
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v3, :cond_1

    .line 1401
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 1403
    :cond_1
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1404
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 1407
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1408
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v3, :cond_3

    .line 1409
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 1410
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1411
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1415
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1416
    if-eqz p2, :cond_4

    aget v3, p2, v5

    if-ltz v3, :cond_4

    aget v3, p2, v5

    const v4, 0x10ffff

    if-le v3, v4, :cond_5

    .line 1457
    :cond_4
    :goto_0
    return-void

    .line 1420
    :cond_5
    aget p1, p2, v5

    .line 1421
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1422
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    .line 1423
    .local v2, upperCaseCode:I
    if-eq v2, p1, :cond_a

    .line 1424
    move p1, v2

    .line 1433
    .end local v2           #upperCaseCode:I
    :cond_6
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v3, :cond_c

    .line 1434
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 1437
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/latin/WordComposer;->setFirstCharCapitalized(Z)V

    .line 1439
    :cond_7
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1440
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->add(I[I)V

    .line 1441
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1442
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 1444
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 1445
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/inputmethod/latin/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCapitalized(Z)V

    .line 1448
    :cond_8
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1450
    :cond_9
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 1454
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1456
    int-to-char v3, p1

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    goto :goto_0

    .line 1427
    .restart local v2       #upperCaseCode:I
    :cond_a
    new-instance v3, Ljava/lang/String;

    new-array v4, v6, [I

    aput p1, v4, v5

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, upperCase:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v1           #upperCase:Ljava/lang/String;
    .end local v2           #upperCaseCode:I
    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    move v4, v5

    .line 1445
    goto :goto_1

    .line 1452
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_c
    int-to-char v3, p1

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_2
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1531
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1532
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 1534
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 1535
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    if-eqz v1, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 1537
    .local v0, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    if-eqz v0, :cond_1

    .line 1538
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 1541
    .end local v0           #inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    :cond_1
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 1542
    return-void
.end method

.method private handleSeparator(I)V
    .locals 7
    .parameter "primaryCode"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1460
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v2, :cond_0

    .line 1461
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->commitVoiceInput()V

    .line 1464
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v2, :cond_1

    .line 1466
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 1470
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 1474
    :cond_2
    const/4 v1, 0x0

    .line 1476
    .local v1, pickedDefault:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1477
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 1478
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1479
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 1481
    :cond_3
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v2, :cond_5

    .line 1486
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x27

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_b

    .line 1490
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->pickDefaultSuggestion()Z

    move-result v1

    .line 1493
    if-ne p1, v6, :cond_5

    .line 1494
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1500
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    if-eqz v2, :cond_6

    if-ne p1, v5, :cond_6

    .line 1501
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1502
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1504
    :cond_6
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1508
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v2, v3, :cond_7

    const/16 v2, 0x2e

    if-ne p1, v2, :cond_7

    .line 1510
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->reswapPeriodAndSpace()V

    .line 1513
    :cond_7
    int-to-char v2, p1

    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 1514
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    sget-object v3, Lcom/android/inputmethod/latin/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lcom/android/inputmethod/latin/TextEntryState$State;

    if-ne v2, v3, :cond_c

    if-eq p1, v5, :cond_c

    .line 1516
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapPunctuationAndSpace()V

    .line 1520
    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    .line 1521
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 1523
    :cond_9
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1524
    if-eqz v0, :cond_a

    .line 1525
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1527
    :cond_a
    return-void

    .line 1497
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 1517
    :cond_c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p1, v6, :cond_8

    .line 1518
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->doubleSpace()V

    goto :goto_1
.end method

.method private handleShift()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->handleShiftInternal(Z)V

    .line 1364
    return-void
.end method

.method private handleShiftInternal(Z)V
    .locals 6
    .parameter "forceNormal"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1367
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1368
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    .line 1369
    .local v1, switcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 1370
    .local v0, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1371
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 1372
    :cond_0
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    .line 1373
    invoke-virtual {v1, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setShifted(Z)V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1374
    :cond_2
    if-eqz v0, :cond_1

    .line 1375
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1376
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    .line 1377
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0

    .line 1379
    :cond_3
    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setShifted(Z)V

    goto :goto_0

    .line 1383
    :cond_4
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->toggleShift()V

    goto :goto_0
.end method

.method private handleVoiceResults()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1711
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    .line 1712
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 1714
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1715
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1717
    if-eqz v4, :cond_0

    .line 1718
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1719
    .local v6, req:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v4, v6, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 1723
    .end local v6           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 1724
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->switchToKeyboardView()V

    .line 1726
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1727
    .local v5, nBest:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    move v2, v9

    .line 1730
    .local v2, capitalizeFirstWord:Z
    :goto_0
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    iget-object v7, v7, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1731
    .local v1, c:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1732
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1734
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #c:Ljava/lang/String;
    .end local v2           #capitalizeFirstWord:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    move v2, v10

    .line 1727
    goto :goto_0

    .line 1737
    .restart local v2       #capitalizeFirstWord:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 1756
    :goto_2
    return-void

    .line 1741
    :cond_5
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1743
    .local v0, bestResult:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 1745
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHints:Lcom/android/inputmethod/latin/Hints;

    invoke-virtual {v7, v0}, Lcom/android/inputmethod/latin/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 1747
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1749
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1750
    invoke-static {v4, v0}, Lcom/android/inputmethod/latin/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 1752
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1754
    :cond_7
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    .line 1755
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    iget-object v8, v8, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method private initSuggest(Ljava/lang/String;)V
    .locals 8
    .parameter "locale"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 445
    .local v2, orig:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 446
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 447
    .local v3, saveLocale:Ljava/util/Locale;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 448
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 449
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v5, :cond_0

    .line 450
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 452
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 453
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v5, "quick_fixes"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 455
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object v1

    .line 456
    .local v1, dictionaries:[I
    new-instance v5, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v5, p0, v1}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;[I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 457
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 458
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 459
    :cond_1
    new-instance v5, Lcom/android/inputmethod/latin/UserDictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 460
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-nez v5, :cond_2

    .line 461
    new-instance v5, Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    .line 463
    :cond_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v5, :cond_3

    .line 464
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/AutoDictionary;->close()V

    .line 466
    :cond_3
    new-instance v5, Lcom/android/inputmethod/latin/AutoDictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/inputmethod/latin/AutoDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    .line 467
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v5, :cond_4

    .line 468
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/UserBigramDictionary;->close()V

    .line 470
    :cond_4
    new-instance v5, Lcom/android/inputmethod/latin/UserBigramDictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v5, p0, p0, v6, v7}, Lcom/android/inputmethod/latin/UserBigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 472
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 473
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 474
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 475
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Suggest;->setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 476
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 477
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 478
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 480
    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 481
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 482
    return-void
.end method

.method private initSuggestPuncList()V
    .locals 4

    .prologue
    .line 2534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Ljava/util/List;

    .line 2535
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    .line 2536
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2538
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2541
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private isAlphabet(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1156
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    const/4 v0, 0x1

    .line 1159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCandidateStripVisible()Z
    .locals 1

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCursorTouchingWord()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2172
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2173
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    move v3, v4

    .line 2186
    :goto_0
    return v3

    .line 2174
    :cond_0
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2175
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2176
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 2179
    goto :goto_0

    .line 2181
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 2184
    goto :goto_0

    :cond_2
    move v3, v4

    .line 2186
    goto :goto_0
.end method

.method private isPredictionOn()Z
    .locals 1

    .prologue
    .line 1572
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    return v0
.end method

.method private isSentenceSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestedPunctuation(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadSettings()V
    .locals 12

    .prologue
    const v11, 0x7f0c0080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2481
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2482
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v6, "vibrate_on"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    .line 2483
    const-string v6, "sound_on"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    .line 2484
    const-string v6, "popup_on"

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f080004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    .line 2486
    const-string v6, "auto_cap"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCap:Z

    .line 2487
    const-string v6, "long_press_delay"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLongPressDelay:I

    .line 2489
    const-string v6, "LatinIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLongPressDelay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLongPressDelay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    const-string v6, "quick_fixes"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    .line 2491
    const-string v6, "has_used_voice_input"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInput:Z

    .line 2492
    const-string v6, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 2500
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "latin_ime_voice_input_supported_locales"

    const-string v8, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    invoke-static {v6, v7, v8}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, supportedLocalesString:Ljava/lang/String;
    const-string v6, "\\s+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/latin/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2507
    .local v3, voiceInputSupportedLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocaleSupportedForVoiceInput:Z

    .line 2509
    const-string v6, "show_suggestions"

    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    .line 2512
    const-string v6, "voice_mode"

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2514
    .local v4, voiceMode:Ljava/lang/String;
    const v6, 0x7f0c0082

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoiceButton:Z

    if-eqz v6, :cond_2

    move v0, v10

    .line 2516
    .local v0, enableVoice:Z
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2517
    .local v5, voiceOnPrimary:Z
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceOnPrimary:Z

    if-eq v5, v6, :cond_1

    .line 2519
    :cond_0
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v6, v0, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 2521
    :cond_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    .line 2522
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceOnPrimary:Z

    .line 2524
    const-string v6, "auto_complete"

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    .line 2528
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 2529
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 2530
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v6, v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 2531
    return-void

    .end local v0           #enableVoice:Z
    .end local v5           #voiceOnPrimary:Z
    :cond_2
    move v0, v9

    .line 2514
    goto :goto_0
.end method

.method private makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;
    .locals 5

    .prologue
    .line 2332
    new-instance v0, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1123
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1124
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1129
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1132
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private measureCps()V
    .locals 9

    .prologue
    .line 2627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2628
    .local v1, now:J
    iget-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    iput-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    .line 2629
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    iget-wide v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    sub-long v7, v1, v7

    aput-wide v7, v5, v6

    .line 2630
    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    .line 2631
    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    .line 2632
    const-wide/16 v3, 0x0

    .line 2633
    .local v3, total:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0x10

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2634
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x467a

    long-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2635
    return-void
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2592
    .local p0, elements:[Ljava/lang/Object;,"[TE;"
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6e

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v0, v2, 0x5

    .line 2593
    .local v0, capacity:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2594
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2595
    return-object v1
.end method

.method private onOptionKeyLongPressed()V
    .locals 1

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showInputMethodPicker()V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private onOptionKeyPressed()V
    .locals 1

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private pickDefaultSuggestion()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1857
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1859
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1862
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1863
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 1864
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 1866
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v3}, Lcom/android/inputmethod/latin/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    move v0, v3

    .line 1870
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private pickSuggestion(Ljava/lang/CharSequence;Z)V
    .locals 6
    .parameter "suggestion"
    .parameter "correcting"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1992
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    .line 1993
    .local v1, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-eqz v2, :cond_3

    .line 1994
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2001
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2002
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2003
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->rememberReplacedWord(Ljava/lang/CharSequence;)V

    .line 2004
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2006
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2007
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 2008
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 2009
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/LatinKeyboard;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 2011
    if-nez p2, :cond_2

    .line 2012
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setNextSuggestions()V

    .line 2014
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2015
    return-void

    .line 1995
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private playKeyClick(I)V
    .locals 3
    .parameter "primaryCode"

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2374
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2375
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    .line 2378
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    if-nez v1, :cond_1

    .line 2381
    const/4 v0, 0x5

    .line 2382
    .local v0, sound:I
    sparse-switch p1, :sswitch_data_0

    .line 2393
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x4080

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2395
    .end local v0           #sound:I
    :cond_1
    return-void

    .line 2384
    .restart local v0       #sound:I
    :sswitch_0
    const/4 v0, 0x7

    .line 2385
    goto :goto_0

    .line 2387
    :sswitch_1
    const/16 v0, 0x8

    .line 2388
    goto :goto_0

    .line 2390
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 2382
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private postUpdateOldSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 1567
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1568
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1569
    return-void
.end method

.method private postUpdateShiftKeyState()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 1051
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1054
    return-void
.end method

.method private postUpdateSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1562
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1563
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1564
    return-void
.end method

.method private reallyStartListening(Z)V
    .locals 6
    .parameter "swipe"

    .prologue
    const/4 v3, 0x1

    .line 1628
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_0

    .line 1631
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1633
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1634
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1635
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInput:Z

    .line 1638
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_1

    .line 1641
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1643
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-static {v1}, Lcom/android/inputmethod/latin/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1645
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 1649
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1651
    new-instance v0, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1656
    .local v0, context:Lcom/android/inputmethod/voice/FieldContext;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V

    .line 1657
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->switchToRecognitionStatusView()V

    .line 1658
    return-void
.end method

.method private reloadKeyboards()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1027
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V

    .line 1028
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoiceButton:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceOnPrimary:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 1033
    return-void

    .line 1030
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rememberReplacedWord(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "suggestion"

    .prologue
    .line 1963
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v3, :cond_2

    .line 1965
    new-instance v0, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>()V

    .line 1966
    .local v0, range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v2

    .line 1968
    .local v2, wordToBeReplaced:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1969
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1971
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1972
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1973
    .local v1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1974
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1976
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1977
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    .end local v0           #range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    .end local v1           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2           #wordToBeReplaced:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeTrailingSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1137
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1138
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1141
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1143
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private resetShift()V
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->handleShiftInternal(Z)V

    .line 1360
    return-void
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1089
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1090
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1092
    .local v1, lastThree:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1096
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1097
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1098
    const-string v2, " .."

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1099
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1100
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1014
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1015
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1016
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    .line 1017
    return-void
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 2190
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2191
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1546
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1550
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1555
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, resultCopy:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 1558
    .local v0, entry:Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSpace()V
    .locals 1

    .prologue
    .line 2231
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 2232
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2234
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 930
    :cond_1
    return-void

    .line 927
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNextSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2129
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2130
    return-void
.end method

.method private setOldSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2097
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2098
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2102
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2103
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v2, :cond_4

    .line 2105
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    move-result-object v1

    .line 2108
    .local v1, touching:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 2109
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2111
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2112
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 2118
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2114
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->selectedForCorrection()V

    .line 2115
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtil;->underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)V

    goto :goto_1

    .line 2120
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 2121
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2124
    .end local v1           #touching:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    goto :goto_0
.end method

.method private setSuggestions(Ljava/util/List;ZZZ)V
    .locals 1
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "haveMinimalSuggestion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 1768
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsShowingHint:Z

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsShowingHint:Z

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1777
    :cond_1
    return-void
.end method

.method private shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .parameter "fieldContext"
    .parameter "attribute"

    .prologue
    .line 2346
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->fieldCanDoVoice(Lcom/android/inputmethod/voice/FieldContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "nm"

    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V
    .locals 4
    .parameter "alternatives"

    .prologue
    const/4 v3, 0x0

    .line 1802
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 1803
    .local v0, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 1804
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 1805
    return-void
.end method

.method private showInputMethodPicker()V
    .locals 1

    .prologue
    .line 1164
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1166
    return-void
.end method

.method private showOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2549
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2550
    const v5, 0x7f020023

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2551
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2552
    const v5, 0x7f0c002e

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, itemSettings:Ljava/lang/CharSequence;
    const v5, 0x7f0c008e

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2554
    .local v1, itemInputMethod:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    new-instance v6, Lcom/android/inputmethod/latin/LatinIME$8;

    invoke-direct {v6, p0}, Lcom/android/inputmethod/latin/LatinIME$8;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2571
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0c002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 2573
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2574
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2575
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2576
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2577
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2578
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2579
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2580
    return-void
.end method

.method private showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 10
    .parameter "word"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1810
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/inputmethod/latin/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1812
    .local v2, prevWord:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v7

    invoke-virtual {v6, v7, p1, v8, v2}, Lcom/android/inputmethod/latin/Suggest;->getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 1817
    .local v3, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getNextLettersFrequencies()[I

    move-result-object v1

    .line 1819
    .local v1, nextLettersFrequencies:[I
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v6, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 1822
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->hasMinimalCorrection()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v9

    .line 1824
    .local v0, correctionAvailable:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1826
    .local v4, typedWord:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6, v4}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    move v5, v9

    .line 1829
    .local v5, typedWordValid:Z
    :goto_1
    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1831
    :cond_1
    or-int/2addr v0, v5

    .line 1834
    :cond_2
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v9

    :goto_2
    and-int/2addr v0, v6

    .line 1835
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v9

    :goto_3
    and-int/2addr v0, v6

    .line 1837
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 1838
    return-void

    .end local v0           #correctionAvailable:Z
    .end local v4           #typedWord:Ljava/lang/CharSequence;
    .end local v5           #typedWordValid:Z
    :cond_3
    move v0, v8

    .line 1822
    goto :goto_0

    .restart local v0       #correctionAvailable:Z
    .restart local v4       #typedWord:Ljava/lang/CharSequence;
    :cond_4
    move v5, v8

    .line 1826
    goto :goto_1

    .restart local v5       #typedWordValid:Z
    :cond_5
    move v6, v8

    .line 1834
    goto :goto_2

    :cond_6
    move v6, v8

    .line 1835
    goto :goto_3
.end method

.method private showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V
    .locals 3
    .parameter
    .parameter "typedWord"
    .parameter "typedWordValid"
    .parameter "correctionAvailable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1842
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1843
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1844
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1845
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1852
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1853
    return-void

    .line 1847
    :cond_1
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1850
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1852
    goto :goto_1
.end method

.method private showVoiceWarningDialog(Z)V
    .locals 9
    .parameter "swipe"

    .prologue
    const v8, 0x7f0c006e

    const v7, 0x7f0c006d

    const-string v6, "\n\n"

    .line 1661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1662
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1663
    const v4, 0x7f020024

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1664
    const v4, 0x104000a

    new-instance v5, Lcom/android/inputmethod/latin/LatinIME$5;

    invoke-direct {v5, p0, p1}, Lcom/android/inputmethod/latin/LatinIME$5;-><init>(Lcom/android/inputmethod/latin/LatinIME;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1670
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/inputmethod/latin/LatinIME$6;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/latin/LatinIME$6;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-eqz v4, :cond_0

    .line 1677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1679
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1687
    :goto_0
    const v4, 0x7f0c006b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1688
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 1690
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1691
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1692
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1693
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1694
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1695
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1696
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 1697
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1698
    return-void

    .line 1681
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c006c

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1684
    .restart local v2       #message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startListening(Z)V
    .locals 1
    .parameter "swipe"

    .prologue
    .line 1618
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    .line 1621
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->showVoiceWarningDialog(Z)V

    .line 1625
    :goto_0
    return-void

    .line 1623
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->reallyStartListening(Z)V

    goto :goto_0
.end method

.method private startTutorial()V
    .locals 4

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2423
    return-void
.end method

.method private swapPunctuationAndSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1074
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1075
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1077
    .local v1, lastTwo:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1080
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1082
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1083
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1084
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private switchToKeyboardView()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1596
    return-void
.end method

.method private switchToRecognitionStatusView()V
    .locals 3

    .prologue
    .line 1599
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 1600
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$4;

    invoke-direct {v2, p0, v0}, Lcom/android/inputmethod/latin/LatinIME$4;-><init>(Lcom/android/inputmethod/latin/LatinIME;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1615
    return-void
.end method

.method private toggleLanguage(ZZ)V
    .locals 5
    .parameter "reset"
    .parameter "next"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2241
    if-eqz p1, :cond_0

    .line 2242
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->reset()V

    .line 2250
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    .line 2251
    .local v0, currentKeyboardMode:I
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->reloadKeyboards()V

    .line 2252
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 2253
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v1, v0, v3, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 2255
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 2256
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->persist()V

    .line 2257
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2258
    return-void

    .line 2244
    .end local v0           #currentKeyboardMode:I
    :cond_0
    if-eqz p2, :cond_1

    .line 2245
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->next()V

    goto :goto_0

    .line 2247
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->prev()V

    goto :goto_0

    .restart local v0       #currentKeyboardMode:I
    :cond_2
    move v2, v3

    .line 2253
    goto :goto_1
.end method

.method private updateAutoTextEnabled(Ljava/util/Locale;)V
    .locals 6
    .parameter "systemLocale"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2457
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v1, :cond_0

    .line 2461
    :goto_0
    return-void

    .line 2458
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v5

    .line 2460
    .local v0, different:Z
    :goto_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-eqz v2, :cond_2

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->setAutoTextEnabled(Z)V

    goto :goto_0

    .end local v0           #different:Z
    :cond_1
    move v0, v4

    .line 2458
    goto :goto_1

    .restart local v0       #different:Z
    :cond_2
    move v2, v4

    .line 2460
    goto :goto_2
.end method

.method private updateCorrectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2443
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    .line 2444
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mQuickFixes:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    .line 2446
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2449
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2451
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_1

    .line 2452
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 2454
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2443
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2444
    goto :goto_1

    .line 2446
    :cond_4
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2363
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 2366
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentMode:Z

    .line 2368
    :cond_1
    return-void

    .line 2366
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 3

    .prologue
    .line 1780
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 1781
    .local v0, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setPreferredLetters([I)V

    .line 1784
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_1

    .line 1793
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_2

    .line 1789
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 1792
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/WordComposer;)V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mObeyHapticFeedback:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 2
    .parameter "word"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1151
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 1152
    const/4 v0, 0x1

    return v0
.end method

.method public changeKeyboardMode()V
    .locals 2

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->toggleSymbols()V

    .line 2584
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 2588
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2589
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2600
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2602
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2603
    .local v0, p:Landroid/util/Printer;
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Keyboard mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCapsLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mComposing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPredictionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCorrectionMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPredicting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoCorrectOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAutoSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCompletionOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  TextEntryState.state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSoundOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibrateOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPopupOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2617
    return-void
.end method

.method getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method getPopupOn()Z
    .locals 1

    .prologue
    .line 2439
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 878
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 880
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_3

    .line 881
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 884
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 885
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 887
    :cond_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 888
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 892
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 893
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 894
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->endSession()V

    .line 895
    return-void
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 2222
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 2223
    .local v0, separators:Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public launchDebugSettings()V
    .locals 1

    .prologue
    .line 2468
    const-class v0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 2469
    return-void
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 2464
    const-class v0, Lcom/android/inputmethod/latin/LatinIMESettings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 2465
    return-void
.end method

.method protected launchSettings(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2472
    .local p1, settingsClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/preference/PreferenceActivity;>;"
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2474
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2475
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2476
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 2477
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 1
    .parameter "isAutoCompletion"

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->onAutoCompletionStateChanged(Z)V

    .line 2639
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->onCancelInput()V

    .line 1286
    return-void
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 1581
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->switchToKeyboardView()V

    .line 1583
    :cond_0
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .parameter "outInsets"

    .prologue
    .line 939
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 940
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 943
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "conf"

    .prologue
    const/4 v4, 0x1

    .line 507
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, systemLocale:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSystemLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    if-eqz v2, :cond_4

    .line 511
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 513
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 514
    invoke-direct {p0, v4, v4}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    .line 520
    :cond_0
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    if-eq v2, v3, :cond_2

    .line 521
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 522
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 523
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 524
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 525
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->reloadKeyboards()V

    .line 527
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 528
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    if-eqz v2, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->switchToRecognitionStatusView()V

    .line 532
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 533
    return-void

    .line 516
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->reloadKeyboards()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    .line 348
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Landroid/content/Context;)V

    .line 349
    invoke-static {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 350
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 352
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 353
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 354
    .local v0, conf:Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 355
    .local v5, prefs:Landroid/content/SharedPreferences;
    new-instance v7, Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/LanguageSwitcher;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 356
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7, v5}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 357
    invoke-static {}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/latin/KeyboardSwitcher;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    .line 358
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V

    .line 359
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 360
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/latin/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 361
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, inputLanguage:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 363
    iget-object v7, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    :cond_0
    const-string v7, "recorrection_enabled"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    .line 367
    const-string v7, "obey_haptic"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mObeyHapticFeedback:Z

    .line 369
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->reset()V

    .line 370
    const/4 v6, 0x1

    .line 371
    .local v6, tryGC:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x5

    if-ge v3, v7, :cond_1

    if-eqz v6, :cond_1

    .line 373
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const/4 v6, 0x0

    .line 371
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v6

    goto :goto_1

    .line 380
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mOrientation:I

    .line 381
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggestPuncList()V

    .line 384
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    new-instance v7, Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {v7, p0, p0}, Lcom/android/inputmethod/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 388
    new-instance v7, Lcom/android/inputmethod/latin/Hints;

    new-instance v8, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v8, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    invoke-direct {v7, p0, v8}, Lcom/android/inputmethod/latin/Hints;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/Hints$Display;)V

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mHints:Lcom/android/inputmethod/latin/Hints;

    .line 399
    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 400
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 548
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 550
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/CandidateView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    .line 551
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/CandidateView;->setService(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 552
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 537
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->recreateInputView()V

    .line 538
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 542
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserDictionary;->close()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 493
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->destroy()V

    .line 496
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 497
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 498
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 499
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .parameter "completions"

    .prologue
    const/4 v4, 0x1

    .line 905
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 906
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 907
    if-nez p1, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    .line 914
    aget-object v0, p1, v1

    .line 915
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 918
    :cond_4
    invoke-direct {p0, v2, v4, v4, v4}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 919
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 920
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 5

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 948
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v3

    .line 950
    .local v1, displayHeight:F
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 951
    .local v0, dimen:F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 952
    const/4 v3, 0x0

    .line 954
    :goto_0
    return v3

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    goto :goto_0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 720
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 723
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_1

    .line 724
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 726
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushLogs()V

    .line 729
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoDictionary:Lcom/android/inputmethod/latin/AutoDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/AutoDictionary;->flushPendingWrites()V

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 736
    :cond_4
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 740
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    return-void
.end method

.method public onKey(I[III)V
    .locals 9
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1196
    .local v1, when:J
    const/4 v3, -0x5

    if-ne p1, v3, :cond_0

    iget-wide v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v5, 0xc8

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1198
    :cond_0
    iput v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1200
    :cond_1
    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1201
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1202
    .local v0, distinctMultiTouch:Z
    sparse-switch p1, :sswitch_data_0

    .line 1244
    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    .line 1245
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1247
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4, p3, p4}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->push(CII)V

    .line 1248
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnInputChar()V

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(I)V

    .line 1255
    :goto_0
    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1257
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->onKey(I)V

    .line 1259
    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1260
    return-void

    .line 1204
    :sswitch_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace()V

    .line 1205
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1206
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete()V

    goto :goto_1

    .line 1210
    :sswitch_1
    if-nez v0, :cond_3

    .line 1211
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleShift()V

    goto :goto_1

    .line 1215
    :sswitch_2
    if-nez v0, :cond_3

    .line 1216
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    goto :goto_1

    .line 1219
    :sswitch_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1220
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_1

    .line 1224
    :sswitch_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onOptionKeyPressed()V

    goto :goto_1

    .line 1227
    :sswitch_5
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onOptionKeyLongPressed()V

    goto :goto_1

    .line 1230
    :sswitch_6
    const/4 v3, 0x1

    invoke-direct {p0, v7, v3}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1233
    :sswitch_7
    invoke-direct {p0, v7, v7}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1237
    :sswitch_8
    invoke-direct {p0, v7}, Lcom/android/inputmethod/latin/LatinIME;->startListening(Z)V

    goto :goto_1

    .line 1241
    :sswitch_9
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_1

    .line 1252
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(I[I)V

    goto :goto_0

    .line 1202
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_7
        -0x68 -> :sswitch_6
        -0x66 -> :sswitch_8
        -0x65 -> :sswitch_5
        -0x64 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 960
    sparse-switch p1, :sswitch_data_0

    .line 981
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 962
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 964
    goto :goto_1

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->close()Z

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    goto :goto_0

    .line 976
    :sswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v0, :cond_0

    move v0, v1

    .line 977
    goto :goto_1

    .line 960
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 986
    packed-switch p1, :pswitch_data_0

    .line 1009
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 992
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    if-eqz v1, :cond_1

    .line 993
    const/4 v1, 0x1

    goto :goto_0

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v12

    .line 997
    .local v12, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v12}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    const/16 v10, 0x41

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1003
    .end local p2
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 1004
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_2

    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1005
    :cond_2
    const/4 v1, 0x1

    move-object p2, v0

    .end local v0           #event:Landroid/view/KeyEvent;
    .restart local p2
    goto :goto_0

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPress(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 2295
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2296
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 2297
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    .line 2299
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2300
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2301
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onPress()V

    .line 2302
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleShift()V

    .line 2311
    :goto_0
    return-void

    .line 2303
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 2304
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    .line 2305
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onPress()V

    .line 2306
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setAutoModeSwitchStateMomentary()V

    goto :goto_0

    .line 2308
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onOtherKeyPressed()V

    .line 2309
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onOtherKeyPressed()V

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 2315
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 2317
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2318
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 2319
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2320
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->resetShift()V

    .line 2321
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onRelease()V

    .line 2329
    :cond_1
    :goto_0
    return-void

    .line 2322
    :cond_2
    if-eqz v0, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 2325
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isInChordingAutoModeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2326
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    .line 2327
    :cond_3
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSymbolKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/ModifierKeyState;->onRelease()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v2, "recorrection_enabled"

    const-string v1, "obey_haptic"

    .line 2262
    const-string v0, "selected_languages"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 2264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRefreshKeyboardRequired:Z

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2265
    :cond_1
    const-string v0, "recorrection_enabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2266
    const-string v0, "recorrection_enabled"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    goto :goto_0

    .line 2268
    :cond_2
    const-string v0, "obey_haptic"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    const-string v0, "obey_haptic"

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mObeyHapticFeedback:Z

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 10
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/16 v9, 0x90

    const/16 v8, 0x80

    const/16 v5, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    .line 560
    .local v1, inputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    if-nez v1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mRefreshKeyboardRequired:Z

    if-eqz v3, :cond_1

    .line 565
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mRefreshKeyboardRequired:Z

    .line 566
    invoke-direct {p0, v7, v7}, Lcom/android/inputmethod/latin/LatinIME;->toggleLanguage(ZZ)V

    .line 569
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3, v6}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 571
    invoke-static {p0}, Lcom/android/inputmethod/latin/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 576
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPasswordText:Z

    .line 577
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v3, 0xff0

    .line 578
    .local v2, variation:I
    if-eq v2, v8, :cond_2

    if-ne v2, v9, :cond_3

    .line 580
    :cond_2
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPasswordText:Z

    .line 583
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->makeFieldContext()Lcom/android/inputmethod/voice/FieldContext;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/latin/LatinIME;->shouldShowVoiceButton(Lcom/android/inputmethod/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoiceButton:Z

    .line 584
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoiceButton:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnableVoice:Z

    if-eqz v3, :cond_7

    move v0, v7

    .line 586
    .local v0, enableVoiceButton:Z
    :goto_1
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    .line 587
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 588
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowingVoiceSuggestions:Z

    .line 589
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    .line 590
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 591
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 592
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    .line 593
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 594
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    .line 595
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 597
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_0

    .line 663
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v7, v4, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 666
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 667
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 668
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 669
    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 670
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 671
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 674
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCandidateStripVisible()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v3, :cond_13

    :cond_5
    move v3, v7

    :goto_3
    invoke-direct {p0, v3, v6}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 676
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 679
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasDictionary:Z

    .line 681
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 683
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 684
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLongPressDelay:I

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setLongPressDelay(I)V

    .line 685
    invoke-virtual {v1, v7}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 686
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-gtz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowSuggestions:Z

    if-eqz v3, :cond_14

    :cond_6
    move v3, v7

    :goto_4
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 688
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->checkReCorrectionOnStart()V

    .line 689
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->checkTutorial(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #enableVoiceButton:Z
    :cond_7
    move v0, v6

    .line 584
    goto :goto_1

    .line 605
    .restart local v0       #enableVoiceButton:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v4, 0x3

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_2

    .line 609
    :pswitch_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v7, v4, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 612
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 614
    if-eq v2, v8, :cond_8

    if-ne v2, v9, :cond_9

    .line 616
    :cond_8
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 618
    :cond_9
    if-eq v2, v5, :cond_a

    const/16 v3, 0x60

    if-ne v2, v3, :cond_e

    .line 620
    :cond_a
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    .line 624
    :goto_5
    if-ne v2, v5, :cond_f

    .line 625
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 626
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v4, 0x5

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 648
    :cond_b
    :goto_6
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_c

    .line 649
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 650
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 653
    :cond_c
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-nez v3, :cond_d

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    if-nez v3, :cond_d

    .line 655
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 657
    :cond_d
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 658
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 659
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    goto/16 :goto_2

    .line 622
    :cond_e
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    goto :goto_5

    .line 628
    :cond_f
    const/16 v3, 0x10

    if-ne v2, v3, :cond_10

    .line 629
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    .line 630
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v4, 0x4

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_6

    .line 632
    :cond_10
    const/16 v3, 0x40

    if-ne v2, v3, :cond_11

    .line 633
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v4, 0x6

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_6

    .line 635
    :cond_11
    const/16 v3, 0xb0

    if-ne v2, v3, :cond_12

    .line 636
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredictionOn:Z

    goto :goto_6

    .line 637
    :cond_12
    const/16 v3, 0xa0

    if-ne v2, v3, :cond_b

    .line 638
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const/4 v4, 0x7

    iget v5, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 642
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-nez v3, :cond_b

    .line 643
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_6

    :cond_13
    move v3, v6

    .line 674
    goto/16 :goto_3

    :cond_14
    move v3, v6

    .line 686
    goto/16 :goto_4

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1263
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 1264
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->commitVoiceInput()V

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1267
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1281
    :goto_0
    return-void

    .line 1268
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 1269
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1270
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_2

    .line 1271
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1273
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 1274
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1275
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1276
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1277
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->onKey(I)V

    .line 1278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1279
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1280
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .parameter "token"
    .parameter "text"

    .prologue
    .line 748
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 750
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 751
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHints:Lcom/android/inputmethod/latin/Hints;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/latin/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 755
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 756
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v3, 0x0

    .line 762
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 774
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1, p4}, Lcom/android/inputmethod/voice/VoiceInput;->setCursorPos(I)V

    .line 776
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    sub-int v2, p4, p3

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/VoiceInput;->setSelectionSpan(I)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_a

    :cond_2
    if-ne p3, p6, :cond_3

    if-eq p4, p6, :cond_a

    :cond_3
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v1, p3, :cond_a

    .line 785
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 786
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 787
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 788
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 789
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 790
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 791
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 793
    :cond_4
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    .line 804
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_5
    :goto_0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 805
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateShiftKeyState()V

    .line 808
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 809
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 811
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v1, :cond_9

    .line 813
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 816
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    if-eq p5, p6, :cond_6

    if-ne p3, p1, :cond_6

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_6
    const/4 v1, 0x1

    sub-int v1, p4, v1

    if-lt p3, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_9

    :cond_7
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_9

    .line 822
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ge v1, v2, :cond_b

    .line 823
    :cond_8
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateOldSuggestions()V

    .line 837
    :cond_9
    :goto_1
    return-void

    .line 794
    :cond_a
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    if-nez v1, :cond_5

    .line 795
    sget-object v1, Lcom/android/inputmethod/latin/LatinIME$9;->$SwitchMap$com$android$inputmethod$latin$TextEntryState$State:[I

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Lcom/android/inputmethod/latin/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 797
    :pswitch_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 800
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 825
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 828
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v1

    if-nez v1, :cond_9

    .line 831
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setNextSuggestions()V

    goto :goto_1

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1702
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 1708
    :goto_0
    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    iput-object p1, v0, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    .line 1706
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceResults:Lcom/android/inputmethod/latin/LatinIME$VoiceResults;

    iput-object p2, v0, Lcom/android/inputmethod/latin/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    .line 1707
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 13
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1874
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v5

    .line 1876
    .local v5, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAfterVoiceInput:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v6, :cond_0

    .line 1877
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v6}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 1879
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    invoke-virtual {v6, v7, p1, v8, v9}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 1884
    :cond_0
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isCorrecting()Z

    move-result v1

    .line 1885
    .local v1, correcting:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1886
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1

    .line 1887
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1889
    :cond_1
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletionOn:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v6, :cond_5

    if-ltz p1, :cond_5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v6, v6

    if-ge p1, v6, :cond_5

    .line 1891
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v6, p1

    .line 1892
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_2

    .line 1893
    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1895
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1896
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v6, :cond_3

    .line 1897
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 1899
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1900
    if-eqz v2, :cond_4

    .line 1901
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1960
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    :goto_0
    return-void

    .line 1907
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v10, :cond_7

    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1911
    :cond_6
    const-string v6, ""

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1913
    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1914
    .local v3, primaryCode:C
    new-array v6, v10, [I

    aput v3, v6, v11

    invoke-virtual {p0, v3, v6, v12, v12}, Lcom/android/inputmethod/latin/LatinIME;->onKey(I[III)V

    .line 1916
    if-eqz v2, :cond_4

    .line 1917
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1921
    .end local v3           #primaryCode:C
    :cond_7
    iput-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAccepted:Z

    .line 1922
    invoke-direct {p0, p2, v1}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 1924
    if-nez p1, :cond_b

    .line 1925
    const/4 v6, 0x3

    invoke-direct {p0, p2, v6}, Lcom/android/inputmethod/latin/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1929
    :goto_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1931
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1933
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mAutoSpace:Z

    if-eqz v6, :cond_8

    if-nez v1, :cond_8

    .line 1934
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->sendSpace()V

    .line 1935
    iput-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedAutoSpace:Z

    .line 1938
    :cond_8
    if-nez p1, :cond_c

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-lez v6, :cond_c

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6, p2}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    move v4, v10

    .line 1942
    .local v4, showingAddToDictionaryHint:Z
    :goto_2
    if-nez v1, :cond_d

    .line 1946
    const/16 v6, 0x20

    invoke-static {v6, v10}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZ)V

    .line 1947
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setNextSuggestions()V

    .line 1954
    :cond_9
    :goto_3
    if-eqz v4, :cond_a

    .line 1955
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCandidateView:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6, p2}, Lcom/android/inputmethod/latin/CandidateView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    .line 1957
    :cond_a
    if-eqz v2, :cond_4

    .line 1958
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1927
    .end local v4           #showingAddToDictionaryHint:Z
    :cond_b
    invoke-direct {p0, p2, v10}, Lcom/android/inputmethod/latin/LatinIME;->addToBigramDictionary(Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_c
    move v4, v11

    .line 1938
    goto :goto_2

    .line 1948
    .restart local v4       #showingAddToDictionaryHint:Z
    :cond_d
    if-nez v4, :cond_9

    .line 1951
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1952
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_3
.end method

.method public preferCapitalization()Z
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWord:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 1
    .parameter "word"
    .parameter "frequency"

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/UserDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    :goto_0
    return-void

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public revertLastWord(Z)V
    .locals 7
    .parameter "deleteChar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2195
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2196
    .local v1, length:I
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    if-nez v4, :cond_2

    if-lez v1, :cond_2

    .line 2197
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2198
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mPredicting:Z

    .line 2199
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2200
    if-eqz p1, :cond_0

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2201
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 2202
    .local v2, toDelete:I
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2203
    .local v3, toTheLeft:Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2205
    add-int/lit8 v2, v2, -0x1

    .line 2207
    :cond_1
    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2208
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2209
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 2210
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V

    .line 2215
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #toDelete:I
    .end local v3           #toTheLeft:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 2212
    :cond_2
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2213
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 934
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 935
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 2287
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 2288
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 2284
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 2281
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 2292
    return-void
.end method

.method tutorialDone()V
    .locals 1

    .prologue
    .line 2426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;

    .line 2427
    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "attr"

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1058
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mShiftKeyState:Lcom/android/inputmethod/latin/ModifierKeyState;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/ModifierKeyState;->isMomentary()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCapsLock:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setShifted(Z)V

    .line 1062
    :cond_1
    return-void

    .line 1059
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
