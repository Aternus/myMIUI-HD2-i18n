.class public Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.super Landroid/view/View;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lcom/android/inputmethod/latin/PointerTracker$UIProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;,
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;,
        Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field static final NOT_A_KEY:I = -0x1

.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1

.field private static final NUMBER_HINT_VERTICAL_ADJUSTMENT_PIXEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LatinKeyboardBaseView"


# instance fields
.field private final KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

.field private final KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private final mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDisambiguateSwipe:Z

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field protected mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

.field private mKeyHysteresisDistance:F

.field private final mKeyRepeatInterval:I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyTextStyle:Landroid/graphics/Typeface;

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardVerticalGap:I

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLongPressDelay:I

.field private mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

.field private final mMiniKeyboardCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardOriginX:I

.field private mMiniKeyboardOriginY:I

.field private mMiniKeyboardParent:Landroid/view/View;

.field private mMiniKeyboardPopup:Landroid/widget/PopupWindow;

.field private mMiniKeyboardPopupTime:J

.field private final mMiniKeyboardSlideAllowance:F

.field private mMiniKeyboardTrackerId:I

.field private mOffsetInWindow:[I

.field private mOldPointerCount:I

.field private mOldPreviewKeyIndex:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

.field private final mPointerTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupLayout:I

.field private mPopupPreviewDisplayedY:I

.field private mPopupPreviewOffsetX:I

.field private mPopupPreviewOffsetY:I

.field private mPreviewHeight:I

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private final mSwipeThreshold:I

.field private final mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

.field private mSymbolColorScheme:I

.field private final mTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalCorrection:F

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101023c

    aput v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 406
    const/high16 v0, 0x7f01

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 407
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 410
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 172
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    .line 194
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 195
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    .line 196
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowTouchPoints:Z

    .line 208
    new-instance v16, Ljava/util/WeakHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    .line 219
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 222
    new-instance v16, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-direct/range {v16 .. v16}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    .line 225
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 227
    new-instance v16, Lcom/android/inputmethod/latin/ProximityKeyDetector;

    invoke-direct/range {v16 .. v16}, Lcom/android/inputmethod/latin/ProximityKeyDetector;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 231
    new-instance v16, Lcom/android/inputmethod/latin/SwipeTracker;

    invoke-direct/range {v16 .. v16}, Lcom/android/inputmethod/latin/SwipeTracker;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    .line 239
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    .line 249
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 251
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    .line 253
    const v16, 0x3f0ccccd

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

    .line 254
    const-string v16, "H"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

    .line 256
    new-instance v16, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    .line 412
    sget-object v16, Lcom/android/inputmethod/latin/R$styleable;->LatinKeyboardBaseView:[I

    const/high16 v17, 0x7f0e

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 414
    .local v5, a:Landroid/content/res/TypedArray;
    const-string v16, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 416
    .local v9, inflate:Landroid/view/LayoutInflater;
    const/4 v13, 0x0

    .line 417
    .local v13, previewLayout:I
    const/4 v10, 0x0

    .line 419
    .local v10, keyTextSize:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 421
    .local v12, n:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v12, :cond_0

    .line 422
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 424
    .local v6, attr:I
    packed-switch v6, :pswitch_data_0

    .line 421
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 426
    :pswitch_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 429
    :pswitch_1
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    goto :goto_1

    .line 432
    :pswitch_2
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mVerticalCorrection:F

    goto :goto_1

    .line 435
    :pswitch_3
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 436
    goto :goto_1

    .line 438
    :pswitch_4
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewOffset:I

    goto :goto_1

    .line 441
    :pswitch_5
    const/16 v16, 0x50

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewHeight:I

    goto :goto_1

    .line 444
    :pswitch_6
    const/16 v16, 0x12

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    goto :goto_1

    .line 447
    :pswitch_7
    const/high16 v16, -0x100

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextColor:I

    goto/16 :goto_1

    .line 450
    :pswitch_8
    const/16 v16, 0xe

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLabelTextSize:I

    goto/16 :goto_1

    .line 453
    :pswitch_9
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    goto/16 :goto_1

    .line 456
    :pswitch_a
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowColor:I

    goto/16 :goto_1

    .line 459
    :pswitch_b
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    goto/16 :goto_1

    .line 463
    :pswitch_c
    const/high16 v16, 0x3f00

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    goto/16 :goto_1

    .line 467
    :pswitch_d
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 468
    .local v15, textStyle:I
    packed-switch v15, :pswitch_data_1

    .line 476
    invoke-static {v15}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 470
    :pswitch_e
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 473
    :pswitch_f
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 481
    .end local v15           #textStyle:I
    :pswitch_10
    const/16 v16, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    goto/16 :goto_1

    .line 486
    .end local v6           #attr:I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 488
    .local v14, res:Landroid/content/res/Resources;
    new-instance v16, Landroid/widget/PopupWindow;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 489
    if-eqz v13, :cond_1

    .line 490
    const/16 v16, 0x0

    move-object v0, v9

    move v1, v13

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    .line 491
    const v16, 0x7f0b000b

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const v17, 0x7f0e0001

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 499
    const/high16 v16, 0x7f0a

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayBeforePreview:I

    .line 500
    const v16, 0x7f0a0001

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayAfterPreview:I

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 503
    new-instance v16, Landroid/widget/PopupWindow;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const v17, 0x7f0e0002

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 507
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    const/16 v17, 0xff

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 513
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 516
    const/high16 v16, 0x43fa

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    .line 518
    const v16, 0x7f080003

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    .line 519
    const v16, 0x7f0b000e

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    .line 521
    new-instance v11, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$1;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 560
    .local v11, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v8, 0x1

    .line 561
    .local v8, ignoreMultitouch:Z
    new-instance v16, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    .line 566
    const v16, 0x7f0a0007

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    .line 567
    return-void

    .line 495
    .end local v8           #ignoreMultitouch:Z
    .end local v11           #listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    .restart local p2
    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    goto/16 :goto_2

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
    .end packed-switch

    .line 468
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showKey(ILcom/android/inputmethod/latin/PointerTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;ILcom/android/inputmethod/latin/PointerTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->openPopupIfRequired(ILcom/android/inputmethod/latin/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/SwipeTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 8
    .parameter "keyboard"

    .prologue
    .line 752
    if-nez p1, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 754
    .local v3, keys:[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 755
    array-length v4, v3

    .line 756
    .local v4, length:I
    const/4 v0, 0x0

    .line 757
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 758
    aget-object v2, v3, v1

    .line 759
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 757
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 762
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    int-to-float v6, v0

    const v7, 0x3fb33333

    mul-float/2addr v6, v7

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/KeyDetector;->setProximityThreshold(I)V

    goto :goto_0
.end method

.method private dismissKeyPreview()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 934
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 935
    .local v1, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v1, v3}, Lcom/android/inputmethod/latin/PointerTracker;->updateKey(I)V

    goto :goto_0

    .line 936
    .end local v1           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 937
    return-void
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1506
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1509
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1510
    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1511
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1513
    :cond_0
    return-void
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1296
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    sub-int v2, p2, v2

    int-to-float v5, v2

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    sub-int v2, p3, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;
    .locals 10
    .parameter "id"

    .prologue
    .line 1301
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1302
    .local v9, pointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/inputmethod/latin/PointerTracker;>;"
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 1303
    .local v7, keys:[Landroid/inputmethodservice/Keyboard$Key;
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 1306
    .local v8, listener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_2

    .line 1307
    new-instance v0, Lcom/android/inputmethod/latin/PointerTracker;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/PointerTracker;-><init>(ILcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;Lcom/android/inputmethod/latin/KeyDetector;Lcom/android/inputmethod/latin/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V

    .line 1310
    .local v0, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    if-eqz v7, :cond_0

    .line 1311
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v7, v2}, Lcom/android/inputmethod/latin/PointerTracker;->setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V

    .line 1312
    :cond_0
    if-eqz v8, :cond_1

    .line 1313
    invoke-virtual {v0, v8}, Lcom/android/inputmethod/latin/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1314
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    .end local v0           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_2
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/PointerTracker;

    return-object p0
.end method

.method private static hasMultiplePopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 1247
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 1250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;
    .locals 11
    .parameter "popupKey"

    .prologue
    const/4 v4, 0x0

    const/high16 v10, -0x8000

    .line 1089
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1090
    .local v2, popupKeyboardId:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1092
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1093
    .local v6, container:Landroid/view/View;
    if-nez v6, :cond_0

    .line 1094
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1096
    :cond_0
    const v1, 0x7f070007

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1098
    .local v8, miniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
    new-instance v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;-><init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1130
    new-instance v1, Lcom/android/inputmethod/latin/MiniKeyboardKeyDetector;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v1, v3}, Lcom/android/inputmethod/latin/MiniKeyboardKeyDetector;-><init>(F)V

    iput-object v1, v8, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 1132
    iput-object v4, v8, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1135
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1136
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1141
    .local v0, keyboard:Landroid/inputmethodservice/Keyboard;
    :goto_0
    invoke-virtual {v8, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1142
    invoke-virtual {v8, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPopupParent(Landroid/view/View;)V

    .line 1144
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v3

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1147
    return-object v6

    .line 1139
    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0       #keyboard:Landroid/inputmethodservice/Keyboard;
    goto :goto_0
.end method

.method private static isAsciiDigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1292
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    instance-of v0, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .end local p0
    check-cast p0, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->isF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonMicLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1272
    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1276
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    const/4 v0, 0x1

    .line 1280
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isNumberAtRightmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    .line 1284
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneRowKeys(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v2, 0x0

    .line 1151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1159
    .end local p0           #keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :goto_0
    return v1

    .line 1152
    .restart local p0       #keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    check-cast p0, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 1159
    .local v0, edgeFlags:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private onBufferDraw()V
    .locals 39

    .prologue
    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    move v6, v0

    if-eqz v6, :cond_3

    .line 783
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    move v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 786
    :cond_1
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 787
    .local v38, width:I
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 788
    .local v22, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v38

    move/from16 v1, v22

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 789
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 791
    .end local v22           #height:I
    .end local v38           #width:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 792
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 794
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .line 795
    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v6, v0

    if-nez v6, :cond_4

    .line 930
    :goto_0
    return-void

    .line 799
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .line 800
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    .line 801
    .local v28, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    move-object v15, v0

    .line 802
    .local v15, clipRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 803
    .local v35, padding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v25

    .line 804
    .local v25, kbdPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v26

    .line 805
    .local v26, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v30, v0

    .line 806
    .local v30, keys:[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v24, v0

    .line 808
    .local v24, invalidKey:Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextColor:I

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    const/16 v16, 0x0

    .line 810
    .local v16, drawSingleKey:Z
    if-eqz v24, :cond_5

    invoke-virtual {v5, v15}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 813
    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v25

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v15, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    add-int v6, v6, v26

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v15, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v25

    add-int/lit8 v6, v6, 0x1

    iget v7, v15, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v26

    add-int/lit8 v6, v6, 0x1

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_5

    .line 817
    const/16 v16, 0x1

    .line 820
    :cond_5
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 821
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v29, v0

    .line 822
    .local v29, keyCount:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 823
    aget-object v27, v30, v23

    .line 824
    .local v27, key:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v16, :cond_6

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 822
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 827
    :cond_6
    invoke-virtual/range {v27 .. v27}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v18

    .line 828
    .local v18, drawableState:[I
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 831
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    if-nez v6, :cond_b

    const/4 v6, 0x0

    move-object/from16 v31, v6

    .line 833
    .local v31, label:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 834
    .local v12, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    iget v7, v12, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_7

    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_8

    .line 835
    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v8, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v9, v0

    move-object/from16 v0, v28

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 837
    :cond_8
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v25

    int-to-float v6, v6

    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    add-int v7, v7, v26

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 838
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 840
    const/16 v36, 0x1

    .line 841
    .local v36, shouldDrawIcon:Z
    if-eqz v31, :cond_9

    .line 844
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_c

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLabelTextSize:I

    move/from16 v34, v0

    .line 846
    .local v34, labelSize:I
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 851
    :goto_4
    move/from16 v0, v34

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    move-object v6, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    .line 855
    .local v33, labelHeightValue:Ljava/lang/Integer;
    if-eqz v33, :cond_d

    .line 856
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 865
    .local v32, labelHeight:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShadowColor:I

    move v9, v0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 866
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v13, v6, 0x2

    .line 867
    .local v13, centerX:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v14, v6, 0x2

    .line 868
    .local v14, centerY:I
    int-to-float v6, v14

    move/from16 v0, v32

    int-to-float v0, v0

    move v7, v0

    const v8, 0x3f0ccccd

    mul-float/2addr v7, v8

    add-float v11, v6, v7

    .line 870
    .local v11, baseline:F
    int-to-float v6, v13

    move-object v0, v5

    move-object/from16 v1, v31

    move v2, v6

    move v3, v11

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 872
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 876
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v36

    .line 878
    .end local v11           #baseline:F
    .end local v13           #centerX:I
    .end local v14           #centerY:I
    .end local v32           #labelHeight:I
    .end local v33           #labelHeightValue:Ljava/lang/Integer;
    .end local v34           #labelSize:I
    :cond_9
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_a

    if-eqz v36, :cond_a

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawIconFully(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 885
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v19, v0

    .line 886
    .local v19, drawableWidth:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v17, v0

    .line 887
    .local v17, drawableHeight:I
    const/16 v20, 0x0

    .line 888
    .local v20, drawableX:I
    const/16 v21, -0x1

    .line 895
    .local v21, drawableY:I
    :goto_6
    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 896
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move v2, v8

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 897
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 898
    move/from16 v0, v20

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v21

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 900
    .end local v17           #drawableHeight:I
    .end local v19           #drawableWidth:I
    .end local v20           #drawableX:I
    .end local v21           #drawableY:I
    :cond_a
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    neg-int v6, v6

    sub-int v6, v6, v25

    int-to-float v6, v6

    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    neg-int v7, v7

    sub-int v7, v7, v26

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 831
    .end local v12           #bounds:Landroid/graphics/Rect;
    .end local v31           #label:Ljava/lang/String;
    .end local v36           #shouldDrawIcon:Z
    :cond_b
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v31, v6

    goto/16 :goto_3

    .line 848
    .restart local v12       #bounds:Landroid/graphics/Rect;
    .restart local v31       #label:Ljava/lang/String;
    .restart local v36       #shouldDrawIcon:Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    move/from16 v34, v0

    .line 849
    .restart local v34       #labelSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    move-object v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 858
    .restart local v33       #labelHeightValue:Ljava/lang/Integer;
    :cond_d
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 859
    .local v37, textBounds:Landroid/graphics/Rect;
    const-string v6, "H"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 860
    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->height()I

    move-result v32

    .line 861
    .restart local v32       #labelHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    move-object v6, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 890
    .end local v32           #labelHeight:I
    .end local v33           #labelHeightValue:Ljava/lang/Integer;
    .end local v34           #labelSize:I
    .end local v37           #textBounds:Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 891
    .restart local v19       #drawableWidth:I
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 892
    .restart local v17       #drawableHeight:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    sub-int v6, v6, v19

    div-int/lit8 v20, v6, 0x2

    .line 893
    .restart local v20       #drawableX:I
    move-object/from16 v0, v27

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v6, v7

    sub-int v6, v6, v17

    div-int/lit8 v21, v6, 0x2

    .restart local v21       #drawableY:I
    goto/16 :goto_6

    .line 902
    .end local v12           #bounds:Landroid/graphics/Rect;
    .end local v17           #drawableHeight:I
    .end local v18           #drawableState:[I
    .end local v19           #drawableWidth:I
    .end local v20           #drawableX:I
    .end local v21           #drawableY:I
    .end local v27           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v31           #label:Ljava/lang/String;
    .end local v36           #shouldDrawIcon:Z
    :cond_f
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v6, v0

    if-eqz v6, :cond_10

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    move v6, v0

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 928
    :cond_10
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method private onCancelEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 1
    .parameter "tracker"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1469
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onCancelEvent(IIJ)V

    .line 1470
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1471
    return-void
.end method

.method private onDownEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 2
    .parameter "tracker"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1441
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/latin/PointerTracker;->isOnModifierKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/latin/PointerTracker;J)V

    .line 1446
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    .line 1447
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->add(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1448
    return-void
.end method

.method private onUpEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V
    .locals 4
    .parameter "tracker"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1451
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lcom/android/inputmethod/latin/PointerTracker;J)V

    .line 1464
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    .line 1465
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    .line 1466
    return-void

    .line 1456
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->lastIndexOf(Lcom/android/inputmethod/latin/PointerTracker;)I

    move-result v0

    .line 1457
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1458
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersOlderThan(Lcom/android/inputmethod/latin/PointerTracker;J)V

    goto :goto_0

    .line 1460
    :cond_1
    const-string v1, "LatinKeyboardBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpEvent: corresponding down event not found for pointer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPopupIfRequired(ILcom/android/inputmethod/latin/PointerTracker;)Z
    .locals 4
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x0

    .line 1070
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupLayout:I

    if-nez v2, :cond_0

    move v2, v3

    .line 1085
    :goto_0
    return v2

    .line 1074
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 1075
    .local v0, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_1

    move v2, v3

    .line 1076
    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1078
    .local v1, result:Z
    if-eqz v1, :cond_2

    .line 1079
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1080
    iget v2, p2, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    .line 1082
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/PointerTracker;->setAlreadyProcessed()V

    .line 1083
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v2, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->remove(Lcom/android/inputmethod/latin/PointerTracker;)V

    :cond_2
    move v2, v1

    .line 1085
    goto :goto_0
.end method

.method private shouldDrawIconFully(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1254
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->hasPuncOrSmileysPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1259
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNonMicLatinF1Key(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->hasPuncOrSmileysPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKey(ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 12
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 963
    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 964
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 968
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 970
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    :goto_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 984
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 986
    .local v5, popupWidth:I
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewHeight:I

    .line 987
    .local v2, popupHeight:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 988
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 989
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 990
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 993
    :cond_1
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    sub-int v8, v5, v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 994
    .local v3, popupPreviewX:I
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v7, v2

    iget v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewOffset:I

    add-int v4, v7, v8

    .line 996
    .local v4, popupPreviewY:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 997
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    if-nez v7, :cond_2

    .line 998
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    .line 999
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    invoke-virtual {p0, v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1000
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1001
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v9, v7, v8

    iget v10, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1002
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1003
    .local v6, windowLocation:[I
    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationOnScreen([I)V

    .line 1004
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowY:I

    .line 1007
    .end local v6           #windowLocation:[I
    :cond_2
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_3
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1009
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v3, v7

    .line 1010
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    .line 1013
    iget v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowY:I

    add-int/2addr v7, v4

    if-gez v7, :cond_3

    .line 1016
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v8, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_8

    .line 1017
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v3, v7

    .line 1021
    :goto_4
    add-int/2addr v4, v2

    .line 1024
    :cond_3
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1025
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v5, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1033
    :goto_5
    iput v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    .line 1034
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 968
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #popupHeight:I
    .end local v3           #popupPreviewX:I
    .end local v4           #popupPreviewY:I
    .end local v5           #popupWidth:I
    :cond_4
    iget-object v11, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 972
    :cond_5
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 973
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v7, v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_6

    .line 975
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextSize:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 976
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 978
    :cond_6
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 979
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1007
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #popupHeight:I
    .restart local v3       #popupPreviewX:I
    .restart local v4       #popupPreviewY:I
    .restart local v5       #popupWidth:I
    :cond_7
    sget-object v8, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 1019
    :cond_8
    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v3, v7

    goto :goto_4

    .line 1027
    :cond_9
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1028
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1029
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 726
    :cond_0
    return-object p1
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1490
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1491
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelAllMessages()V

    .line 1493
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1494
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1495
    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 1496
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1497
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1329
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    return v0
.end method

.method public getSymbolColorScheme()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSymbolColorScheme:I

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1518
    const/4 v0, 0x1

    .line 1520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1044
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1046
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidate()V

    .line 1047
    return-void
.end method

.method public invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 1057
    if-nez p1, :cond_0

    .line 1066
    :goto_0
    return-void

    .line 1059
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1061
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1063
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onBufferDraw()V

    .line 1064
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isInSlidingKeyInput()Z

    move-result v0

    .line 1324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerQueue:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$PointerQueue;->isInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1501
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1502
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->closing()V

    .line 1503
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 774
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 775
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 776
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onBufferDraw()V

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 779
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 21
    .parameter "popupKey"

    .prologue
    .line 1173
    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move v5, v0

    if-nez v5, :cond_0

    .line 1174
    const/4 v5, 0x0

    .line 1243
    :goto_0
    return v5

    .line 1176
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1177
    .local v12, container:Landroid/view/View;
    if-nez v12, :cond_1

    .line 1178
    invoke-direct/range {p0 .. p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;

    move-result-object v12

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :cond_1
    const v5, 0x7f070007

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v5, v0

    if-nez v5, :cond_2

    .line 1183
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1194
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v16

    .line 1195
    .local v16, miniKeys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/Keyboard$Key;

    iget v5, v5, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v15, v5

    .line 1198
    .local v15, miniKeyWidth:I
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->hasMultiplePopupChars(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v14, v5

    .line 1200
    .local v14, isNumberAtLeftmost:Z
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int v17, v5, v6

    .line 1201
    .local v17, popupX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    add-int v17, v17, v5

    .line 1202
    if-eqz v14, :cond_6

    .line 1203
    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v5, v0

    sub-int/2addr v5, v15

    add-int v17, v17, v5

    .line 1204
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v17, v17, v5

    .line 1210
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int v18, v5, v6

    .line 1211
    .local v18, popupY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int v18, v18, v5

    .line 1212
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v18, v18, v5

    .line 1213
    invoke-virtual {v12}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int v18, v18, v5

    .line 1214
    move/from16 v19, v17

    .line 1215
    .local v19, x:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    move v5, v0

    if-eqz v5, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isOneRowKeys(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    move v5, v0

    move/from16 v20, v5

    .line 1217
    .local v20, y:I
    :goto_4
    move/from16 v11, v19

    .line 1218
    .local v11, adjustedX:I
    if-gez v19, :cond_8

    .line 1219
    const/4 v11, 0x0

    .line 1223
    :cond_3
    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1224
    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v5, v0

    move-object v0, v5

    move v1, v11

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPopupOffset(II)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->isShifted()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setShifted(Z)Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1235
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1236
    .local v9, eventTime:J
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1237
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1239
    .local v13, downEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1240
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1243
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1195
    .end local v9           #eventTime:J
    .end local v11           #adjustedX:I
    .end local v13           #downEvent:Landroid/view/MotionEvent;
    .end local v14           #isNumberAtLeftmost:Z
    .end local v15           #miniKeyWidth:I
    .end local v17           #popupX:I
    .end local v18           #popupY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_4
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_1

    .line 1198
    .restart local v15       #miniKeyWidth:I
    :cond_5
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_2

    .line 1206
    .restart local v14       #isNumberAtLeftmost:Z
    .restart local v17       #popupX:I
    :cond_6
    add-int v17, v17, v15

    .line 1207
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v17, v17, v5

    .line 1208
    invoke-virtual {v12}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int v17, v17, v5

    goto/16 :goto_3

    .restart local v18       #popupY:I
    .restart local v19       #x:I
    :cond_7
    move/from16 v20, v18

    .line 1215
    goto/16 :goto_4

    .line 1220
    .restart local v11       #adjustedX:I
    .restart local v20       #y:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_3

    .line 1221
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v11, v5, v6

    goto/16 :goto_5
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    .line 743
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 737
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 738
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 740
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 767
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 770
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "me"

    .prologue
    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1335
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 1336
    .local v23, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    move/from16 v22, v0

    .line 1337
    .local v22, oldPointerCount:I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    move v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v23

    move v1, v2

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    move v1, v2

    if-le v0, v1, :cond_0

    .line 1343
    const/4 v2, 0x1

    .line 1437
    .end local v3           #action:I
    :goto_0
    return v2

    .line 1347
    .restart local v3       #action:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mSwipeTracker:Lcom/android/inputmethod/latin/SwipeTracker;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v2, v0

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 1354
    const/4 v2, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 1358
    .local v6, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 1359
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 1360
    .local v19, id:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v10, v2

    .line 1361
    .local v10, x:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v11, v2

    .line 1365
    .local v11, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v2, v0

    if-eqz v2, :cond_3

    .line 1366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    move v2, v0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1367
    .local v21, miniKeyboardPointerIndex:I
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1368
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v4, v2

    .line 1369
    .local v4, miniKeyboardX:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .local v5, miniKeyboardY:I
    move-object/from16 v2, p0

    .line 1370
    invoke-direct/range {v2 .. v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v24

    .line 1372
    .local v24, translated:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboard:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1373
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    .line 1375
    .end local v4           #miniKeyboardX:I
    .end local v5           #miniKeyboardY:I
    .end local v24           #translated:Landroid/view/MotionEvent;
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v21           #miniKeyboardPointerIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->isInKeyRepeat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1380
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    .line 1381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1386
    .local v8, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    move v1, v2

    if-le v0, v1, :cond_5

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1395
    .end local v8           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    move v2, v0

    if-nez v2, :cond_9

    .line 1397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1398
    .restart local v8       #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    move v1, v2

    if-ne v0, v1, :cond_6

    const/4 v2, 0x2

    move/from16 v0, v22

    move v1, v2

    if-ne v0, v1, :cond_6

    .line 1401
    invoke-virtual {v8, v10, v11, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    .line 1412
    .end local v3           #action:I
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1402
    .restart local v3       #action:I
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v23

    move v1, v2

    if-ne v0, v1, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v22

    move v1, v2

    if-ne v0, v1, :cond_7

    .line 1405
    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/PointerTracker;->getLastY()I

    move-result v3

    .end local v3           #action:I
    invoke-virtual {v8, v2, v3, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_1

    .line 1406
    .restart local v3       #action:I
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v23

    move v1, v2

    if-ne v0, v1, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v22

    move v1, v2

    if-ne v0, v1, :cond_8

    move v9, v3

    move-wide v12, v6

    .line 1407
    invoke-virtual/range {v8 .. v13}, Lcom/android/inputmethod/latin/PointerTracker;->onTouchEvent(IIIJ)V

    goto :goto_1

    .line 1409
    :cond_8
    const-string v2, "LatinKeyboardBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #action:I
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown touch panel behavior: pointer count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (old "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1415
    .end local v8           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    .restart local v3       #action:I
    :cond_9
    const/4 v2, 0x2

    if-ne v3, v2, :cond_a

    .line 1416
    const/16 v18, 0x0

    .end local v3           #action:I
    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 1417
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1418
    .restart local v8       #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v8, v2, v3, v6, v7}, Lcom/android/inputmethod/latin/PointerTracker;->onMoveEvent(IIJ)V

    .line 1416
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1421
    .end local v8           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    .end local v18           #i:I
    .restart local v3       #action:I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPointerTracker(I)Lcom/android/inputmethod/latin/PointerTracker;

    move-result-object v8

    .line 1422
    .restart local v8       #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    packed-switch v3, :pswitch_data_0

    .line 1437
    .end local v3           #action:I
    .end local v8           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_b
    :goto_3
    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v3       #action:I
    .restart local v8       #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :pswitch_1
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1425
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onDownEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1429
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onUpEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1432
    invoke-direct/range {v12 .. v17}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onCancelEvent(Lcom/android/inputmethod/latin/PointerTracker;IIJ)V

    goto :goto_3

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 6
    .parameter "keyboard"

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v2, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 597
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 598
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 599
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->onSetKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 600
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mVerticalCorrection:F

    add-float/2addr v4, v5

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/inputmethod/latin/KeyDetector;->setKeyboard(Landroid/inputmethodservice/Keyboard;FF)[Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 602
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    .line 603
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 604
    .local v1, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/latin/PointerTracker;->setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V

    goto :goto_0

    .line 606
    .end local v1           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->requestLayout()V

    .line 608
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 609
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 611
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 612
    return-void
.end method

.method public setLongPressDelay(I)V
    .locals 5
    .parameter "longPressDelay"

    .prologue
    .line 683
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    .line 684
    const-string v2, "LatinKeyboardBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLongPressDelay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 686
    .local v1, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mLongPressDelay:I

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/PointerTracker;->setLongPressKeyTimeout(I)V

    goto :goto_0

    .line 688
    .end local v1           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 571
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/PointerTracker;

    .line 572
    .local v1, tracker:Lcom/android/inputmethod/latin/PointerTracker;
    invoke-virtual {v1, p1}, Lcom/android/inputmethod/latin/PointerTracker;->setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    goto :goto_0

    .line 574
    .end local v1           #tracker:Lcom/android/inputmethod/latin/PointerTracker;
    :cond_0
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 699
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    .line 700
    iput p2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    .line 701
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 702
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 696
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    .line 667
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 712
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shifted"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 641
    const/4 v0, 0x1

    .line 644
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V
    .locals 6
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 941
    .local v2, oldKeyIndex:I
    iput p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 942
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    instance-of v3, v3, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    check-cast v3, Lcom/android/inputmethod/latin/LatinKeyboard;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboard;->isLanguageSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v5

    .line 947
    .local v1, isLanguageSwitchEnabled:Z
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/inputmethod/latin/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v0, v5

    .line 950
    .local v0, hidePreviewOrShowSpaceKeyPreview:Z
    :goto_1
    if-eq v2, p1, :cond_2

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mShowPreview:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 953
    :cond_1
    const/4 v3, -0x1

    if-ne p1, v3, :cond_5

    .line 954
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 955
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayAfterPreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->dismissPreview(J)V

    .line 960
    :cond_2
    :goto_2
    return-void

    .end local v0           #hidePreviewOrShowSpaceKeyPreview:Z
    .end local v1           #isLanguageSwitchEnabled:Z
    :cond_3
    move v1, v4

    .line 942
    goto :goto_0

    .restart local v1       #isLanguageSwitchEnabled:Z
    :cond_4
    move v0, v4

    .line 947
    goto :goto_1

    .line 956
    .restart local v0       #hidePreviewOrShowSpaceKeyPreview:Z
    :cond_5
    if-eqz p2, :cond_2

    .line 957
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mDelayBeforePreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->popupPreview(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_2
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeDown()V

    .line 1487
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeLeft()V

    .line 1479
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeRight()V

    .line 1475
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeUp()V

    .line 1483
    return-void
.end method
