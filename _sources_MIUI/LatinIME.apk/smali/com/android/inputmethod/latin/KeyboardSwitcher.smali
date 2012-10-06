.class public Lcom/android/inputmethod/latin/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    }
.end annotation


# static fields
.field private static final ALPHABET_MODES:[I = null

.field private static final AUTO_MODE_SWITCH_STATE_ALPHA:I = 0x0

.field private static final AUTO_MODE_SWITCH_STATE_CHORDING:I = 0x4

.field private static final AUTO_MODE_SWITCH_STATE_MOMENTARY:I = 0x3

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL:I = 0x2

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final CHAR_THEME_COLOR_BLACK:I = 0x1

.field private static final CHAR_THEME_COLOR_WHITE:I = 0x0

.field public static final DEFAULT_LAYOUT_ID:Ljava/lang/String; = "4"

.field private static final DEFAULT_SETTINGS_KEY_MODE:I = 0x7f0c002a

.field private static final KBD_PHONE:[I = null

.field private static final KBD_PHONE_SYMBOLS:[I = null

.field private static final KBD_QWERTY:[I = null

.field private static final KBD_SYMBOLS:[I = null

.field private static final KBD_SYMBOLS_SHIFT:[I = null

.field public static final KEYBOARDMODE_EMAIL:I = 0x7f070010

.field public static final KEYBOARDMODE_EMAIL_WITH_SETTINGS_KEY:I = 0x7f070015

.field public static final KEYBOARDMODE_IM:I = 0x7f070011

.field public static final KEYBOARDMODE_IM_WITH_SETTINGS_KEY:I = 0x7f070016

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f07000e

.field public static final KEYBOARDMODE_NORMAL_WITH_SETTINGS_KEY:I = 0x7f070013

.field public static final KEYBOARDMODE_SYMBOLS:I = 0x7f070018

.field public static final KEYBOARDMODE_SYMBOLS_WITH_SETTINGS_KEY:I = 0x7f070019

.field public static final KEYBOARDMODE_URL:I = 0x7f07000f

.field public static final KEYBOARDMODE_URL_WITH_SETTINGS_KEY:I = 0x7f070014

.field public static final KEYBOARDMODE_WEB:I = 0x7f070012

.field public static final KEYBOARDMODE_WEB_WITH_SETTINGS_KEY:I = 0x7f070017

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_IM:I = 0x6

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4

.field public static final MODE_WEB:I = 0x7

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout_20100902"

.field private static final SETTINGS_KEY_MODE_ALWAYS_SHOW:I = 0x7f0c002b

.field private static final SETTINGS_KEY_MODE_AUTO:I = 0x7f0c002a

.field private static final THEMES:[I

.field private static final sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;


# instance fields
.field private mAutoModeSwitchState:I

.field private mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mHasSettingsKey:Z

.field private mHasVoice:Z

.field private mImeOptions:I

.field private mInputLocale:Ljava/util/Locale;

.field private mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

.field private mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

.field private mIsAutoCompletionActive:Z

.field private mIsSymbols:Z

.field private final mKeyboards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/inputmethod/latin/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLastDisplayWidth:I

.field private mLayoutId:I

.field private mMode:I

.field private mPreferSymbols:Z

.field private mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

.field private mVoiceOnPrimary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->THEMES:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_PHONE:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_PHONE_SYMBOLS:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS:[I

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS_SHIFT:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_QWERTY:[I

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->ALPHABET_MODES:[I

    .line 140
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x3t 0x7ft
        0x4t 0x0t 0x3t 0x7ft
        0x7t 0x0t 0x3t 0x7ft
        0x6t 0x0t 0x3t 0x7ft
        0x5t 0x0t 0x3t 0x7ft
    .end array-data

    .line 76
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
    .end array-data

    .line 77
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x5t 0x7ft
        0x7t 0x0t 0x5t 0x7ft
    .end array-data

    .line 79
    :array_3
    .array-data 0x4
        0xct 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
    .end array-data

    .line 81
    :array_4
    .array-data 0x4
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
    .end array-data

    .line 83
    :array_5
    .array-data 0x4
        0xat 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
    .end array-data

    .line 86
    :array_6
    .array-data 0x4
        0xet 0x0t 0x7t 0x7ft
        0xft 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
        0x11t 0x0t 0x7t 0x7ft
        0x12t 0x0t 0x7t 0x7ft
        0x13t 0x0t 0x7t 0x7ft
        0x14t 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x7t 0x7ft
        0x16t 0x0t 0x7t 0x7ft
        0x17t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    .line 107
    iput v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    .line 123
    iput v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method private changeLatinKeyboardView(IZ)V
    .locals 7
    .parameter "newLayout"
    .parameter "forceReset"

    .prologue
    const-string v6, ","

    .line 523
    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_4

    .line 524
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v3, :cond_1

    .line 525
    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->closing()V

    .line 527
    :cond_1
    sget-object v3, Lcom/android/inputmethod/latin/KeyboardSwitcher;->THEMES:[I

    array-length v3, v3

    if-gt v3, p1, :cond_2

    .line 528
    const-string v3, "4"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 531
    :cond_2
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->reset()V

    .line 532
    const/4 v2, 0x1

    .line 533
    .local v2, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    if-eqz v2, :cond_3

    .line 535
    :try_start_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/KeyboardSwitcher;->THEMES:[I

    aget v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/latin/LatinKeyboardView;

    iput-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    const/4 v2, 0x0

    .line 533
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 539
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    .line 544
    goto :goto_1

    .line 541
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 542
    .local v0, e:Landroid/view/InflateException;
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    .line 546
    .end local v0           #e:Landroid/view/InflateException;
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 547
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    .line 549
    .end local v1           #i:I
    .end local v2           #tryGC:Z
    :cond_4
    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v3, v3, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;-><init>(Lcom/android/inputmethod/latin/KeyboardSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method private getCharColorId()I
    .locals 1

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isBlackSym()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    .line 579
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 302
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 303
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/android/inputmethod/latin/LatinKeyboard;>;"
    if-nez v3, :cond_3

    move-object v1, v8

    .line 304
    .local v1, keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    :goto_0
    if-nez v1, :cond_2

    .line 305
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 306
    .local v2, orig:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 307
    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 308
    .local v4, saveLocale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputLocale:Ljava/util/Locale;

    iput-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 309
    invoke-virtual {v2, v0, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 310
    new-instance v1, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v1           #keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    iget v6, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v7, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    invoke-direct {v1, v5, v6, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 311
    .restart local v1       #keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget v5, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    const v6, 0x7f05000c

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mXml:I

    const v6, 0x7f05000d

    if-ne v5, v6, :cond_4

    :cond_0
    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {v1, v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboard;->setVoiceMode(ZZ)V

    .line 313
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isBlackSym()Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;->setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;ZZ)V

    .line 315
    iget-boolean v5, p1, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-eqz v5, :cond_1

    .line 316
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 318
    :cond_1
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 321
    invoke-virtual {v2, v0, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 323
    .end local v0           #conf:Landroid/content/res/Configuration;
    .end local v2           #orig:Landroid/content/res/Resources;
    .end local v4           #saveLocale:Ljava/util/Locale;
    :cond_2
    return-object v1

    .line 303
    .end local v1           #keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/LatinKeyboard;

    move-object v1, v5

    goto :goto_0

    .line 311
    .restart local v0       #conf:Landroid/content/res/Configuration;
    .restart local v1       #keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    .restart local v2       #orig:Landroid/content/res/Resources;
    .restart local v4       #saveLocale:Ljava/util/Locale;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getKeyboardId(IIZ)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    .locals 10
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "isSymbols"

    .prologue
    const v8, 0x7f070019

    const v7, 0x7f070018

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, ","

    .line 327
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result v1

    .line 328
    .local v1, hasVoice:Z
    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getCharColorId()I

    move-result v0

    .line 330
    .local v0, charColorId:I
    sget-object v3, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_QWERTY:[I

    aget v2, v3, v0

    .line 331
    .local v2, keyboardRowsResId:I
    if-eqz p3, :cond_2

    .line 332
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 333
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_PHONE_SYMBOLS:[I

    aget v4, v4, v0

    invoke-direct {v3, v4, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IZ)V

    .line 368
    :goto_0
    return-object v3

    .line 335
    :cond_0
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS:[I

    aget v4, v4, v0

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_1

    move v5, v8

    :goto_1
    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    .line 340
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 368
    const/4 v3, 0x0

    goto :goto_0

    .line 342
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyboardId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnWarning(Ljava/lang/String;)V

    .line 346
    :pswitch_1
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_3

    const v4, 0x7f070013

    :goto_2
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto :goto_0

    :cond_3
    const v4, 0x7f07000e

    goto :goto_2

    .line 350
    :pswitch_2
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS:[I

    aget v4, v4, v0

    iget-boolean v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_4

    move v5, v8

    :goto_3
    invoke-direct {v3, v4, v5, v6, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_3

    .line 354
    :pswitch_3
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v4, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_PHONE:[I

    aget v4, v4, v0

    invoke-direct {v3, v4, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IZ)V

    goto :goto_0

    .line 356
    :pswitch_4
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_5

    const v4, 0x7f070014

    :goto_4
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto :goto_0

    :cond_5
    const v4, 0x7f07000f

    goto :goto_4

    .line 359
    :pswitch_5
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_6

    const v4, 0x7f070015

    :goto_5
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_0

    :cond_6
    const v4, 0x7f070010

    goto :goto_5

    .line 362
    :pswitch_6
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_7

    const v4, 0x7f070016

    :goto_6
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f070011

    goto :goto_6

    .line 365
    :pswitch_7
    new-instance v3, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_8

    const v4, 0x7f070017

    :goto_7
    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_0

    :cond_8
    const v4, 0x7f070012

    goto :goto_7

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getPointerCount()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method private hasVoiceButton(Z)Z
    .locals 1
    .parameter "isSymbols"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 5
    .parameter "ims"

    .prologue
    const/4 v4, 0x0

    .line 151
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    iput-object p0, v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    .line 153
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    const-string v2, "pref_keyboard_layout_20100902"

    const-string v3, "4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    .line 156
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v1, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 157
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 159
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    sget-object v2, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v2, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 160
    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    sget-object v2, Lcom/android/inputmethod/latin/KeyboardSwitcher;->sInstance:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {v2, v4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 161
    return-void
.end method

.method private makeSymbolsId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    .locals 4
    .parameter "hasVoice"

    .prologue
    .line 175
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS:[I

    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getCharColorId()I

    move-result v2

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070019

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0

    :cond_0
    const v2, 0x7f070018

    goto :goto_0
.end method

.method private makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    .locals 4
    .parameter "hasVoice"

    .prologue
    .line 181
    new-instance v0, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    sget-object v1, Lcom/android/inputmethod/latin/KeyboardSwitcher;->KBD_SYMBOLS_SHIFT:[I

    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getCharColorId()I

    move-result v2

    aget v1, v1, v2

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070019

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    return-object v0

    :cond_0
    const v2, 0x7f070018

    goto :goto_0
.end method

.method private setKeyboardMode(IIZZ)V
    .locals 4
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "enableVoice"
    .parameter "isSymbols"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-nez v2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 274
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    .line 275
    iput p2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    .line 276
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    if-eq p3, v2, :cond_1

    .line 278
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    invoke-virtual {p0, p3, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 280
    :cond_1
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    .line 282
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPopupOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 283
    invoke-direct {p0, p1, p2, p4}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboardId(IIZ)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    .line 284
    .local v0, id:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;
    const/4 v1, 0x0

    .line 285
    .local v1, keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 287
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 291
    :cond_2
    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 292
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 293
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 294
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->isShiftLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 296
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isBlackSym()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 298
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private updateSettingsKeyState(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "prefs"

    .prologue
    const v4, 0x7f0c002a

    .line 593
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 594
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, "settings_key"

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, settingsKeyMode:Ljava/lang/String;
    const v2, 0x7f0c002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 601
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasSettingsKey:Z

    goto :goto_0
.end method


# virtual methods
.method public getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 376
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    if-nez v5, :cond_0

    move v5, v6

    .line 385
    :goto_0
    return v5

    .line 379
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget v1, v5, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 380
    .local v1, currentMode:I
    sget-object v0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->ALPHABET_MODES:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 381
    .local v4, mode:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 382
    const/4 v5, 0x1

    goto :goto_0

    .line 380
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #mode:Ljava/lang/Integer;
    :cond_2
    move v5, v6

    .line 385
    goto :goto_0
.end method

.method public isBlackSym()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 569
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getSymbolColorScheme()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInChordingAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMomentaryAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeKeyboards(Z)V
    .locals 4
    .parameter "forceCreate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeSymbolsId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 188
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v1, :cond_3

    move v1, v3

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 190
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getMaxWidth()I

    move-result v0

    .line 195
    .local v0, displayWidth:I
    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_4

    .line 198
    :cond_1
    :goto_2
    return-void

    .end local v0           #displayWidth:I
    :cond_2
    move v1, v2

    .line 187
    goto :goto_0

    :cond_3
    move v1, v2

    .line 188
    goto :goto_1

    .line 196
    .restart local v0       #displayWidth:I
    :cond_4
    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLastDisplayWidth:I

    .line 197
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_2
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 2
    .parameter "isAutoCompletion"

    .prologue
    .line 584
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    if-eq p1, v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    .line 586
    .local v0, keyboardView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    .line 587
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->onAutoCompletionStateChanged(Z)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 590
    .end local v0           #keyboardView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    .line 431
    :cond_0
    return-void
.end method

.method public onKey(I)V
    .locals 4
    .parameter "key"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 472
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 482
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    .line 483
    iput v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 487
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 492
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    .line 496
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 500
    :pswitch_1
    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 507
    :pswitch_2
    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_0

    .line 508
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 559
    const-string v0, "pref_keyboard_layout_20100902"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    const-string v0, "4"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v0, "settings_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 564
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->recreateInputView()V

    goto :goto_0
.end method

.method public recreateInputView()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLayoutId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    .line 520
    return-void
.end method

.method public setAutoModeSwitchStateMomentary()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 448
    return-void
.end method

.method public setKeyboardMode(IIZ)V
    .locals 4
    .parameter "mode"
    .parameter "imeOptions"
    .parameter "enableVoice"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const-string v3, ","

    .line 260
    iput v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 261
    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    .line 262
    if-ne p1, v2, :cond_1

    .line 263
    const/4 p1, 0x1

    .line 266
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 268
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;)V
    .locals 1
    .parameter "languageSwitcher"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 171
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 172
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 1
    .parameter "shiftLocked"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShiftLocked(Z)Z

    .line 398
    :cond_0
    return-void
.end method

.method public setShifted(Z)V
    .locals 1
    .parameter "shifted"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setShifted(Z)Z

    .line 392
    :cond_0
    return-void
.end method

.method public setVoiceMode(ZZ)V
    .locals 4
    .parameter "enableVoice"
    .parameter "voiceOnPrimary"

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p2, v0, :cond_1

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    :cond_1
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    .line 251
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mVoiceOnPrimary:Z

    .line 252
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 253
    return-void
.end method

.method public toggleShift()V
    .locals 5

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    #calls: Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->access$000(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    #calls: Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->equals(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;->access$000(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v1

    .line 405
    .local v1, symbolsShiftedKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 406
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 411
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 412
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 413
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0

    .line 416
    .end local v1           #symbolsShiftedKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getKeyboard(Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;)Lcom/android/inputmethod/latin/LatinKeyboard;

    move-result-object v0

    .line 417
    .local v0, symbolsKeyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mSymbolsId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mCurrentId:Lcom/android/inputmethod/latin/KeyboardSwitcher$KeyboardId;

    .line 418
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 421
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->enableShiftLock()V

    .line 422
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShifted(Z)Z

    .line 423
    iget-object v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0
.end method

.method public toggleSymbols()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 434
    iget v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mMode:I

    iget v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 435
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mPreferSymbols:Z

    if-nez v0, :cond_1

    .line 436
    iput v5, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 440
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 434
    goto :goto_0

    .line 438
    :cond_1
    iput v4, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_1
.end method
