.class public Lcom/android/inputmethod/latin/LatinKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;,
        Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;
    }
.end annotation


# static fields
.field private static final DEBUG_PREFERRED_LETTER:Z = false

.field private static final MINIMUM_SCALE_OF_LANGUAGE_NAME:F = 0.8f

.field private static final OPACITY_FULLY_OPAQUE:I = 0xff

.field private static final OVERLAP_PERCENTAGE_HIGH_PROB:F = 0.85f

.field private static final OVERLAP_PERCENTAGE_LOW_PROB:F = 0.7f

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field private static final SPACEBAR_DRAG_THRESHOLD:F = 0.8f

.field private static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACEBAR_POPUP_MIN_RATIO:F = 0.4f

.field private static final SPACE_LED_LENGTH_PERCENT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "LatinKeyboard"

.field private static sSpacebarVerticalCorrection:I


# instance fields
.field private final NUMBER_HINT_COUNT:I

.field private m123Key:Landroid/inputmethodservice/Keyboard$Key;

.field private m123Label:Ljava/lang/CharSequence;

.field private m123MicIcon:Landroid/graphics/drawable/Drawable;

.field private m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mHasVoiceButton:Z

.field private final mHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsAlphaKeyboard:Z

.field private mIsBlackSym:Z

.field private mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

.field private mLocale:Ljava/util/Locale;

.field private mMicIcon:Landroid/graphics/drawable/Drawable;

.field private mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

.field private mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mPrefDistance:I

.field private mPrefLetter:I

.field private mPrefLetterFrequencies:[I

.field private mPrefLetterX:I

.field private mPrefLetterY:I

.field private final mRes:Landroid/content/res/Resources;

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

.field private mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

.field private mSpaceDragLastDiff:I

.field private mSpaceDragStartX:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

.field private final mSpaceKeyIndexArray:[I

.field private mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mVerticalGap:I

.field private mVoiceEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;-><init>(Landroid/content/Context;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "mode"

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 67
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->NUMBER_HINT_COUNT:I

    .line 69
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    .line 103
    iput v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 126
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    .line 127
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 128
    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 131
    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 132
    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    .line 133
    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 135
    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 136
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 139
    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 140
    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 143
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    .line 145
    const v1, 0x7f05000a

    if-eq p2, v1, :cond_0

    const v1, 0x7f05000b

    if-ne p2, v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    .line 148
    new-array v1, v2, [I

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->indexOf(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 149
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->initializeNumberHintResources(Landroid/content/Context;)V

    .line 151
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->getVerticalGap()I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVerticalGap:I

    .line 152
    return-void

    :cond_1
    move v1, v3

    .line 145
    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinKeyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinKeyboard;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/LatinKeyboard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/LatinKeyboard;)Lcom/android/inputmethod/latin/LanguageSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    return-object v0
.end method

.method private distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I
    .locals 2
    .parameter "k"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 789
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-le p3, v0, :cond_0

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 790
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 792
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private drawSpaceBar(IZZ)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "opacity"
    .parameter "isAutoCompletion"
    .parameter "isBlack"

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object v6, v0

    iget v9, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 551
    .local v9, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 552
    .local v10, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 553
    .local v15, buffer:Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 554
    .local v16, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f090003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 558
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 559
    .local v5, paint:Landroid/graphics/Paint;
    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 560
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 561
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 563
    const/4 v13, 0x1

    .line 564
    .local v13, allowVariableTextSize:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    const v11, 0x1030046

    const/16 v12, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static/range {v5 .. v12}, Lcom/android/inputmethod/latin/LatinKeyboard;->layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;

    move-result-object v20

    .line 570
    .local v20, language:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    move-object v6, v0

    if-eqz p3, :cond_1

    const v7, 0x7f090005

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    .line 573
    .local v21, shadowColor:I
    int-to-float v6, v10

    const v7, 0x3f19999a

    mul-float v14, v6, v7

    .line 574
    .local v14, baseline:F
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v17

    .line 575
    .local v17, descent:F
    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 576
    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    sub-float v7, v14, v17

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    move-object v6, v0

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 578
    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    sub-float v7, v14, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v13           #allowVariableTextSize:Z
    .end local v14           #baseline:F
    .end local v17           #descent:F
    .end local v20           #language:Ljava/lang/String;
    .end local v21           #shadowColor:I
    :cond_0
    if-eqz p2, :cond_2

    .line 589
    mul-int/lit8 v6, v9, 0x50

    div-int/lit8 v19, v6, 0x64

    .line 590
    .local v19, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 591
    .local v18, iconHeight:I
    sub-int v6, v9, v19

    div-int/lit8 v22, v6, 0x2

    .line 592
    .local v22, x:I
    sub-int v23, v10, v18

    .line 593
    .local v23, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    add-int v7, v22, v19

    add-int v8, v23, v18

    move-object v0, v6

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 603
    :goto_1
    return-object v15

    .line 570
    .end local v18           #iconHeight:I
    .end local v19           #iconWidth:I
    .end local v22           #x:I
    .end local v23           #y:I
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v13       #allowVariableTextSize:Z
    .restart local v20       #language:Ljava/lang/String;
    :cond_1
    const v7, 0x7f090004

    goto/16 :goto_0

    .line 596
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v13           #allowVariableTextSize:Z
    .end local v20           #language:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 597
    .restart local v19       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 598
    .restart local v18       #iconHeight:I
    sub-int v6, v9, v19

    div-int/lit8 v22, v6, 0x2

    .line 599
    .restart local v22       #x:I
    sub-int v23, v10, v18

    .line 600
    .restart local v23       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    add-int v7, v22, v19

    add-int v8, v23, v18

    move-object v0, v6

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "mainIcon"
    .parameter "hintIcon"

    .prologue
    const/4 v7, 0x0

    .line 481
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 482
    :cond_0
    const/4 v5, 0x0

    .line 503
    :goto_0
    return-object v5

    .line 483
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    .local v4, hintIconPadding:Landroid/graphics/Rect;
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 485
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    .local v0, buffer:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 491
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 493
    .local v2, drawableX:I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 495
    .local v3, drawableY:I
    invoke-direct {p0, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 496
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 498
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    invoke-virtual {p4, v7, v7, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 502
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v5, v0

    .line 503
    goto :goto_0
.end method

.method private getTextSizeFromTheme(II)I
    .locals 6
    .parameter "style"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 817
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010095

    aput v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 819
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 820
    .local v1, textSize:I
    return v1
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 2
    .parameter "paint"
    .parameter "text"
    .parameter "textSize"
    .parameter "bounds"

    .prologue
    .line 473
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 475
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public static hasPuncOrSmileysPopup(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 431
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050016

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v1, 0x7f050018

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inPrefList(I[I)Z
    .locals 2
    .parameter "code"
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 784
    array-length v0, p2

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    aget v0, p2, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 784
    goto :goto_0

    :cond_1
    move v0, v1

    .line 785
    goto :goto_0
.end method

.method private indexOf(I)I
    .locals 5
    .parameter "code"

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 809
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 810
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 811
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_0

    move v3, v1

    .line 813
    :goto_1
    return v3

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private initializeNumberHintResources(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const v3, 0x7f02002c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 157
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f02002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 159
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f02002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 160
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f020030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    const v3, 0x7f020031

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 162
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x6

    const v3, 0x7f020032

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 163
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    const v3, 0x7f020033

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 164
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x8

    const v3, 0x7f020034

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x9

    const v3, 0x7f020035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    return-void
.end method

.method private static layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;
    .locals 14
    .parameter "paint"
    .parameter "locale"
    .parameter "lArrow"
    .parameter "rArrow"
    .parameter "width"
    .parameter "height"
    .parameter "origTextSize"
    .parameter "allowVariableTextSize"

    .prologue
    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v6, v5

    .line 511
    .local v6, arrowWidth:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    .line 512
    .local v5, arrowHeight:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    add-float v8, v6, v6

    sub-float v9, v7, v8

    .line 513
    .local v9, maxTextWidth:F
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 516
    .local v7, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 517
    .local v8, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, v8

    move/from16 v2, p6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v11

    .line 519
    .local v11, textWidth:I
    int-to-float v10, v11

    div-float v10, v9, v10

    const/high16 v12, 0x3f80

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v10, v10, p6

    .line 522
    .local v10, textSize:F
    if-eqz p7, :cond_2

    .line 523
    invoke-static {p0, v8, v10, v7}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result p7

    .line 525
    .end local v11           #textWidth:I
    .local p7, textWidth:I
    div-float v11, v10, p6

    const v12, 0x3f4ccccd

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_0

    move/from16 v0, p7

    int-to-float v0, v0

    move v11, v0

    cmpl-float v11, v11, v9

    if-lez v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    .local v11, useShortName:Z
    :goto_0
    move v13, v10

    .end local v10           #textSize:F
    .local v13, textSize:F
    move/from16 v10, p7

    .end local p7           #textWidth:I
    .local v10, textWidth:I
    move/from16 p7, v13

    .line 531
    .end local v11           #useShortName:Z
    .end local v13           #textSize:F
    .local p7, textSize:F
    :goto_1
    if-eqz v11, :cond_4

    .line 532
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-static {p1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 533
    .end local v8           #language:Ljava/lang/String;
    .local p1, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result p7

    .line 534
    .end local v10           #textWidth:I
    .local p7, textWidth:I
    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    div-float v7, v9, v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .end local v7           #bounds:Landroid/graphics/Rect;
    move-result v7

    mul-float p6, p6, v7

    .line 536
    .local p6, textSize:F
    :goto_2
    move-object v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 539
    move/from16 v0, p5

    int-to-float v0, v0

    move p0, v0

    const p5, 0x3f19999a

    mul-float p0, p0, p5

    .line 540
    .local p0, baseline:F
    sub-float p5, p0, v5

    move/from16 v0, p5

    float-to-int v0, v0

    move/from16 p5, v0

    .line 541
    .local p5, top:I
    sub-int p4, p4, p7

    div-int/lit8 p4, p4, 0x2

    .end local p4
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    .line 542
    .local p4, remains:F
    sub-float p6, p4, v6

    move/from16 v0, p6

    float-to-int v0, v0

    move/from16 p6, v0

    move/from16 v0, p4

    float-to-int v0, v0

    move v5, v0

    float-to-int v7, p0

    move-object/from16 v0, p2

    move/from16 v1, p6

    move/from16 v2, p5

    move v3, v5

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 543
    .end local v5           #arrowHeight:F
    .end local p6           #textSize:F
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 p2, v0

    add-float p2, p2, p4

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 p2, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 p6, v0

    add-float p4, p4, p6

    add-float p4, p4, v6

    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 p4, v0

    float-to-int p0, p0

    move-object/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p4

    move v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 546
    .end local p0           #baseline:F
    .end local p2
    .end local p4           #remains:F
    return-object p1

    .line 525
    .restart local v5       #arrowHeight:F
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v8       #language:Ljava/lang/String;
    .local v10, textSize:F
    .local p0, paint:Landroid/graphics/Paint;
    .local p1, locale:Ljava/util/Locale;
    .restart local p2
    .local p4, width:I
    .local p5, height:I
    .local p6, origTextSize:F
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 528
    .local v11, textWidth:I
    .local p7, allowVariableTextSize:Z
    :cond_2
    move v0, v11

    int-to-float v0, v0

    move/from16 p7, v0

    cmpl-float p7, p7, v9

    if-lez p7, :cond_3

    .end local p7           #allowVariableTextSize:Z
    const/16 p7, 0x1

    move/from16 v10, p7

    .line 529
    .local v10, useShortName:Z
    :goto_3
    move/from16 p7, p6

    .local p7, textSize:F
    move v13, v10

    .local v13, useShortName:I
    move v10, v11

    .end local v11           #textWidth:I
    .local v10, textWidth:I
    move v11, v13

    .end local v13           #useShortName:I
    .local v11, useShortName:I
    goto/16 :goto_1

    .line 528
    .end local p7           #textSize:F
    .local v10, textSize:F
    .local v11, textWidth:I
    :cond_3
    const/16 p7, 0x0

    move/from16 v10, p7

    goto :goto_3

    .end local v11           #textWidth:I
    .local v10, textWidth:I
    .restart local p7       #textSize:F
    :cond_4
    move/from16 p6, p7

    .end local p7           #textSize:F
    .local p6, textSize:F
    move-object p1, v8

    .end local v8           #language:Ljava/lang/String;
    .local p1, language:Ljava/lang/String;
    move/from16 p7, v10

    .end local v10           #textWidth:I
    .local p7, textWidth:I
    goto :goto_2
.end method

.method private setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    return-void
.end method

.method private setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 408
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/inputmethod/latin/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 411
    .local v0, micWithSettingsHintDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 412
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x66

    aput v3, v1, v2

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 413
    const v1, 0x7f050015

    iput v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 414
    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 415
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 416
    return-void
.end method

.method private setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "label"
    .parameter "popupResId"

    .prologue
    const/4 v2, 0x0

    .line 419
    iput-object p2, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 420
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 421
    iput p3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 422
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 424
    return-void
.end method

.method private update123Key()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_0

    .line 368
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 370
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 371
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 374
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private updateDynamicKeys()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->update123Key()V

    .line 362
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateF1Key()V

    .line 363
    return-void
.end method

.method private updateF1Key()V
    .locals 4

    .prologue
    const v2, 0x7f050013

    const-string v3, ","

    .line 382
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_4

    .line 386
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, "/"

    const v2, 0x7f050017

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 388
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, "@"

    const v2, 0x7f050012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 391
    :cond_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ","

    invoke-direct {p0, v0, v3, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 398
    :cond_4
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setMicF1Key(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 401
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ","

    invoke-direct {p0, v0, v3, v2}, Lcom/android/inputmethod/latin/LatinKeyboard;->setNonMicF1Key(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateLocaleDrag(I)V
    .locals 6
    .parameter "diff"

    .prologue
    const/4 v5, 0x0

    .line 607
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    if-nez v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v2, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getMinWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 610
    .local v1, width:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 611
    .local v0, height:I
    new-instance v2, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;-><init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    .line 612
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 613
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 615
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->setDiff(I)V
    invoke-static {v2, p1}, Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;->access$100(Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;I)V

    .line 616
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 617
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 621
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 622
    return-void

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/latin/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateNumberHintKeys()V
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_1
    return-void
.end method

.method private updateSpaceBarForLocale(ZZ)V
    .locals 4
    .parameter "isAutoCompletion"
    .parameter "isBlack"

    .prologue
    const/16 v3, 0xff

    .line 456
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->drawSpaceBar(IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 469
    :goto_0
    return-void

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->drawSpaceBar(IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 10
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x0

    .line 171
    new-instance v0, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;-><init>(Lcom/android/inputmethod/latin/LatinKeyboard;Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 172
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    sparse-switch v1, :sswitch_data_0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_0

    .line 192
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 194
    :cond_0
    const/4 v7, -0x1

    .line 195
    .local v7, hintNumber:I
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int v7, v1, v9

    .line 200
    :cond_1
    :goto_1
    if-ltz v7, :cond_2

    const/16 v1, 0x9

    if-gt v7, v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mNumberHintKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v0, v1, v7

    .line 204
    :cond_2
    return-object v0

    .line 174
    .end local v7           #hintNumber:I
    :sswitch_0
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 177
    :sswitch_1
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 180
    :sswitch_2
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_0

    .line 183
    :sswitch_3
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Key:Landroid/inputmethodservice/Keyboard$Key;

    .line 184
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 197
    .restart local v7       #hintNumber:I
    :cond_3
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int v7, v1, v9

    goto :goto_1

    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        -0x2 -> :sswitch_3
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method enableShiftLock()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 268
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 270
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v1, v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->enableShiftLock()V
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->access$000(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 275
    :cond_1
    return-void
.end method

.method public getLanguageChangeDirection()I
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    iget v1, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 627
    :cond_0
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiff:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNearestKeys(II)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 798
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 802
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getMinWidth()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method isAlphaKeyboard()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsAlphaKeyboard:Z

    return v0
.end method

.method isCurrentlyInSpace()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    return v0
.end method

.method public isF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInside(Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;II)Z
    .locals 12
    .parameter "key"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 675
    iget-object v10, p1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->codes:[I

    const/4 v11, 0x0

    aget v0, v10, v11

    .line 676
    .local v0, code:I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    const/4 v10, -0x5

    if-ne v0, v10, :cond_3

    .line 678
    :cond_0
    iget v10, p1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->height:I

    div-int/lit8 v10, v10, 0xa

    sub-int/2addr p3, v10

    .line 679
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    iget v10, p1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v10, v10, 0x6

    add-int/2addr p2, v10

    .line 680
    :cond_1
    const/4 v10, -0x5

    if-ne v0, v10, :cond_2

    iget v10, p1, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v10, v10, 0x6

    sub-int/2addr p2, v10

    .line 778
    :cond_2
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v10, :cond_14

    const/4 v10, 0x0

    .line 780
    :goto_0
    return v10

    .line 681
    :cond_3
    const/16 v10, 0x20

    if-ne v0, v10, :cond_7

    .line 682
    sget v10, Lcom/android/inputmethod/latin/LatinKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p3, v10

    .line 683
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 684
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v10, :cond_5

    .line 685
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartX:I

    sub-int v1, p2, v10

    .line 686
    .local v1, diff:I
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiff:I

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_4

    .line 687
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDrag(I)V

    .line 689
    :cond_4
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 690
    const/4 v10, 0x1

    goto :goto_0

    .line 692
    .end local v1           #diff:I
    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v5

    .line 693
    .local v5, insideSpace:Z
    if-eqz v5, :cond_6

    .line 694
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 695
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragStartX:I

    .line 696
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDrag(I)V

    :cond_6
    move v10, v5

    .line 698
    goto :goto_0

    .line 701
    .end local v5           #insideSpace:Z
    :cond_7
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    if-eqz v10, :cond_2

    .line 703
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    if-ne v10, p2, :cond_8

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    if-eq v10, p3, :cond_9

    .line 704
    :cond_8
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 705
    const v10, 0x7fffffff

    iput v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 708
    :cond_9
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 709
    .local v9, pref:[I
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-lez v10, :cond_b

    .line 715
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_a

    const/4 v10, 0x1

    goto :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_0

    .line 717
    :cond_b
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v4

    .line 718
    .local v4, inside:Z
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->getNearestKeys(II)[I

    move-result-object v7

    .line 719
    .local v7, nearby:[I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 720
    .local v8, nearbyKeys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    if-eqz v4, :cond_f

    .line 722
    invoke-direct {p0, v0, v9}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 724
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 725
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 726
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 727
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_c

    .line 728
    aget v10, v7, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 729
    .local v6, k:Landroid/inputmethodservice/Keyboard$Key;
    if-eq v6, p1, :cond_d

    iget-object v10, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-direct {p0, v10, v9}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 730
    invoke-direct {p0, v6, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I

    move-result v2

    .line 731
    .local v2, dist:I
    iget v10, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    const v11, 0x3f333333

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-ge v2, v10, :cond_d

    iget-object v10, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    aget v10, v9, v10

    iget v11, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    aget v11, v9, v11

    mul-int/lit8 v11, v11, 0x3

    if-le v10, v11, :cond_d

    .line 733
    iget-object v10, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 734
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 743
    .end local v2           #dist:I
    .end local v6           #k:Landroid/inputmethodservice/Keyboard$Key;
    :cond_c
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 727
    .restart local v6       #k:Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 743
    .end local v6           #k:Landroid/inputmethodservice/Keyboard$Key;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 755
    .end local v3           #i:I
    :cond_f
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v10, v7

    if-ge v3, v10, :cond_11

    .line 756
    aget v10, v7, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 757
    .restart local v6       #k:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v10, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-direct {p0, v10, v9}, Lcom/android/inputmethod/latin/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 758
    invoke-direct {p0, v6, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->distanceFrom(Landroid/inputmethodservice/Keyboard$Key;II)I

    move-result v2

    .line 759
    .restart local v2       #dist:I
    iget v10, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    const v11, 0x3f59999a

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-ge v2, v10, :cond_10

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    if-ge v2, v10, :cond_10

    .line 761
    iget-object v10, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 762
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 763
    iput p3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 764
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 755
    .end local v2           #dist:I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 769
    .end local v6           #k:Landroid/inputmethodservice/Keyboard$Key;
    :cond_11
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-nez v10, :cond_12

    move v10, v4

    .line 770
    goto/16 :goto_0

    .line 772
    :cond_12
    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_13

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 780
    .end local v3           #i:I
    .end local v4           #inside:Z
    .end local v7           #nearby:[I
    .end local v8           #nearbyKeys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    .end local v9           #pref:[I
    :cond_14
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v10

    goto/16 :goto_0
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShiftLocked()Z
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 320
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method keyReleased()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 660
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 661
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 662
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterX:I

    .line 663
    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterY:I

    .line 664
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefDistance:I

    .line 665
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateLocaleDrag(I)V

    .line 668
    :cond_0
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)Landroid/inputmethodservice/Keyboard$Key;
    .locals 1
    .parameter "isAutoCompletion"

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 439
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    return-object v0
.end method

.method public setColorOfSymbolIcons(ZZ)V
    .locals 2
    .parameter "isAutoCompletion"
    .parameter "isBlack"

    .prologue
    .line 331
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    .line 332
    if-eqz p2, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 335
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateDynamicKeys()V

    .line 344
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateNumberHintKeys()V

    .line 348
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 339
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 340
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 341
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method setImeOptions(Landroid/content/res/Resources;II)V
    .locals 3
    .parameter "res"
    .parameter "mode"
    .parameter "options"

    .prologue
    const/4 v2, 0x0

    .line 208
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mMode:I

    .line 210
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 215
    const v0, 0x400000ff

    and-int/2addr v0, p3

    packed-switch v0, :pswitch_data_0

    .line 244
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ":-)"

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const-string v1, ":-) "

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f050018

    iput v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_0
    return-void

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0c0063

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0c0064

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0c0065

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f020069

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    if-eqz v1, :cond_1

    const v1, 0x7f020058

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 234
    :cond_1
    const v1, 0x7f020080

    goto :goto_1

    .line 239
    :pswitch_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 240
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f0c0066

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    const v1, 0x7f020068

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mIsBlackSym:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020057

    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 253
    :cond_3
    const v1, 0x7f02007f

    goto :goto_2

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLanguageSwitcher(Lcom/android/inputmethod/latin/LanguageSwitcher;ZZ)V
    .locals 3
    .parameter "switcher"
    .parameter "isAutoCompletion"
    .parameter "isBlackSym"

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    .line 635
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v1

    move-object v0, v1

    .line 639
    .local v0, locale:Ljava/util/Locale;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLanguageSwitcher:Lcom/android/inputmethod/latin/LanguageSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    const/4 v0, 0x0

    .line 645
    :cond_0
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mLocale:Ljava/util/Locale;

    .line 646
    invoke-virtual {p0, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 647
    return-void

    .line 635
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method setPreferredLetters([I)V
    .locals 1
    .parameter "frequencies"

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mPrefLetter:I

    .line 656
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 3
    .parameter "shiftLocked"

    .prologue
    const/4 v2, 0x1

    .line 278
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 279
    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 281
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 282
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 285
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 286
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    goto :goto_0
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "shiftState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, shiftChanged:Z
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_4

    .line 299
    if-nez p1, :cond_2

    .line 300
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-eqz v1, :cond_1

    move v0, v3

    .line 301
    :goto_0
    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 302
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 303
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 314
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 300
    goto :goto_0

    .line 305
    :cond_2
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v1, :cond_0

    .line 306
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    if-nez v1, :cond_3

    move v0, v3

    .line 307
    :goto_3
    iput v3, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftState:I

    .line 308
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 306
    goto :goto_3

    .line 312
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public setVoiceMode(ZZ)V
    .locals 0
    .parameter "hasVoiceButton"
    .parameter "hasVoice"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mHasVoiceButton:Z

    .line 356
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinKeyboard;->mVoiceEnabled:Z

    .line 357
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboard;->updateDynamicKeys()V

    .line 358
    return-void
.end method
