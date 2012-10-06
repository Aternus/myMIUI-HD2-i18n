.class public Lcom/android/inputmethod/latin/PointerTracker;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/PointerTracker$KeyState;,
        Lcom/android/inputmethod/latin/PointerTracker$UIProxy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_MOVE:Z = false

.field private static final KEY_DELETE:[I = null

.field private static final NOT_A_KEY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PointerTracker"


# instance fields
.field private final mDelayBeforeKeyRepeatStart:I

.field private final mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private mInMultiTap:Z

.field private mIsInSlidingKeyInput:Z

.field private mIsRepeatableKey:Z

.field private mKeyAlreadyProcessed:Z

.field private final mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

.field private mKeyHysteresisDistanceSquared:I

.field private final mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

.field private mKeyboardLayoutHasBeenChanged:Z

.field private final mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mLongPressKeyTimeout:I

.field private final mMultiTapKeyTimeout:I

.field public final mPointerId:I

.field private final mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviousKey:I

.field private final mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

.field private mTapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x5

    aput v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/PointerTracker;->KEY_DELETE:[I

    return-void
.end method

.method public constructor <init>(ILcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;Lcom/android/inputmethod/latin/KeyDetector;Lcom/android/inputmethod/latin/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V
    .locals 3
    .parameter "id"
    .parameter "handler"
    .parameter "keyDetector"
    .parameter "proxy"
    .parameter "res"
    .parameter "longPressDelay"

    .prologue
    const/4 v2, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 82
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 171
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    .line 174
    iput-object p4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    .line 175
    iput-object p2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    .line 176
    iput-object p3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    .line 177
    invoke-static {}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/latin/KeyboardSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    .line 178
    new-instance v0, Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-direct {v0, p3}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;-><init>(Lcom/android/inputmethod/latin/KeyDetector;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    .line 179
    invoke-interface {p4}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->hasDistinctMultitouch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHasDistinctMultitouch:Z

    .line 180
    const v0, 0x7f0a0006

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    .line 181
    iput p6, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    .line 182
    const-string v0, "PointerTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLongPressKeyTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const v0, 0x7f0a0009

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mMultiTapKeyTimeout:I

    .line 184
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 185
    return-void
.end method

.method private checkMultiTap(JI)V
    .locals 7
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const/4 v6, 0x1

    .line 552
    invoke-virtual {p0, p3}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 553
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-wide v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mMultiTapKeyTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    if-ne p3, v2, :cond_2

    move v0, v6

    .line 558
    .local v0, isMultiTap:Z
    :goto_1
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-le v2, v6, :cond_4

    .line 559
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    .line 560
    if-eqz v0, :cond_3

    .line 561
    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_0

    .line 556
    .end local v0           #isMultiTap:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 564
    .restart local v0       #isMultiTap:Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_0

    .line 568
    :cond_4
    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;II)V
    .locals 9
    .parameter "title"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 574
    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v2

    .line 575
    .local v2, keyIndex:I
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 577
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v1, :cond_0

    .line 578
    const-string v0, "----"

    .line 583
    .local v0, code:Ljava/lang/String;
    :goto_0
    const-string v4, "PointerTracker"

    const-string v5, "%s%s[%d] %3d,%3d %3d(%s) %s"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    iget-boolean v7, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v7, :cond_2

    const-string v7, "-"

    :goto_1
    aput-object v7, v6, v8

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPointerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v0, v6, v7

    const/4 v7, 0x7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "modifier"

    :goto_2
    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 580
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v4, v7

    .line 581
    .local v3, primaryCode:I
    if-gez v3, :cond_1

    const-string v4, "%4d"

    :goto_3
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #code:Ljava/lang/String;
    goto :goto_0

    .end local v0           #code:Ljava/lang/String;
    :cond_1
    const-string v4, "0x%02x"

    goto :goto_3

    .line 583
    .end local v3           #primaryCode:I
    .restart local v0       #code:Ljava/lang/String;
    :cond_2
    const-string v7, " "

    goto :goto_1

    :cond_3
    const-string v8, ""

    goto :goto_2
.end method

.method private detectAndSendKey(IIIJ)V
    .locals 9
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 486
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 487
    .local v3, listener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    .line 489
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v2, :cond_1

    .line 490
    if-eqz v3, :cond_0

    .line 491
    invoke-interface {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 494
    if-eqz v3, :cond_2

    .line 495
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-interface {v3, v7}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 525
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    .line 526
    iput-wide p4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    goto :goto_0

    .line 499
    :cond_3
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v4, v7

    .line 500
    .local v0, code:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/KeyDetector;->newCodeArray()[I

    move-result-object v1

    .line 501
    .local v1, codes:[I
    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    invoke-virtual {v4, p2, p3, v1}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    .line 503
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    if-eqz v4, :cond_4

    .line 504
    iget v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 505
    iget-object v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    const/4 v5, -0x5

    sget-object v6, Lcom/android/inputmethod/latin/PointerTracker;->KEY_DELETE:[I

    invoke-interface {v4, v5, v6, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 509
    :goto_2
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    aget v0, v4, v5

    .line 516
    :cond_4
    array-length v4, v1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    aget v4, v1, v7

    if-eq v4, v0, :cond_5

    aget v4, v1, v8

    if-ne v4, v0, :cond_5

    .line 517
    aget v4, v1, v7

    aput v4, v1, v8

    .line 518
    aput v0, v1, v7

    .line 520
    :cond_5
    if-eqz v3, :cond_2

    .line 521
    invoke-interface {v3, v0, v1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 522
    invoke-interface {v3, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 507
    :cond_6
    iput v7, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_2
.end method

.method private static getSquareDistanceToKeyEdge(IILandroid/inputmethodservice/Keyboard$Key;)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "key"

    .prologue
    .line 453
    iget v5, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 454
    .local v5, left:I
    iget v8, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v9, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int v6, v8, v9

    .line 455
    .local v6, right:I
    iget v7, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 456
    .local v7, top:I
    iget v8, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v9, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int v0, v8, v9

    .line 457
    .local v0, bottom:I
    if-ge p0, v5, :cond_0

    move v3, v5

    .line 458
    .local v3, edgeX:I
    :goto_0
    if-ge p1, v7, :cond_2

    move v4, v7

    .line 459
    .local v4, edgeY:I
    :goto_1
    sub-int v1, p0, v3

    .line 460
    .local v1, dx:I
    sub-int v2, p1, v4

    .line 461
    .local v2, dy:I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 457
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #edgeX:I
    .end local v4           #edgeY:I
    :cond_0
    if-le p0, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p0

    goto :goto_0

    .line 458
    .restart local v3       #edgeX:I
    :cond_2
    if-le p1, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p1

    goto :goto_1
.end method

.method private isMinorMoveBounce(III)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "newKey"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-gez v1, :cond_1

    .line 441
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "keyboard and/or hysteresis not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 443
    .local v0, curKey:I
    if-ne p3, v0, :cond_2

    move v1, v4

    .line 448
    :goto_0
    return v1

    .line 445
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    invoke-static {p1, p2, v1}, Lcom/android/inputmethod/latin/PointerTracker;->getSquareDistanceToKeyEdge(IILandroid/inputmethodservice/Keyboard$Key;)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    if-ge v1, v2, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    .line 448
    goto :goto_0
.end method

.method private isModifierInternal(I)Z
    .locals 4
    .parameter "keyIndex"

    .prologue
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 219
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_0

    move v2, v3

    .line 222
    :goto_0
    return v2

    .line 221
    :cond_0
    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v2, v3

    .line 222
    .local v1, primaryCode:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private isValidKeyIndex(I)Z
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 205
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastSentIndex:I

    .line 546
    iput v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    .line 547
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLastTapTime:J

    .line 548
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    .line 549
    return-void
.end method

.method private showKeyPreviewAndUpdateKey(I)V
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->updateKey(I)V

    .line 469
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHasDistinctMultitouch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p0}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    invoke-interface {v0, p1, p0}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->showPreview(ILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0
.end method

.method private startLongPressTimer(I)V
    .locals 3
    .parameter "keyIndex"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->isInMomentaryAutoModeSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startLongPressTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    goto :goto_0
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey(I)Landroid/inputmethodservice/Keyboard$Key;
    .locals 1
    .parameter "keyIndex"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getLastX()I

    move-result v0

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getLastY()I

    move-result v0

    return v0
.end method

.method public getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 537
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    if-gez v2, :cond_0

    move v2, v3

    :goto_0
    aget v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 540
    :goto_1
    return-object v0

    .line 537
    :cond_0
    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mTapCount:I

    goto :goto_0

    .line 540
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method getStartX()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getStartX()I

    move-result v0

    return v0
.end method

.method getStartY()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getStartY()I

    move-result v0

    return v0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    return v0
.end method

.method public isModifier()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isOnModifierKey(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyDetector:Lcom/android/inputmethod/latin/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isModifierInternal(I)Z

    move-result v0

    return v0
.end method

.method public isSpaceKey(I)Z
    .locals 4
    .parameter "keyIndex"

    .prologue
    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 236
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onCancelEvent(IIJ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 401
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 402
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 403
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 404
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v0

    .line 405
    .local v0, keyIndex:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 407
    :cond_0
    return-void
.end method

.method public onDownEvent(IIJ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v0

    .line 285
    .local v0, keyIndex:I
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 286
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    .line 288
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 289
    invoke-direct {p0, p3, p4, v0}, Lcom/android/inputmethod/latin/PointerTracker;->checkMultiTap(JI)V

    .line 290
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 296
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v1, :cond_0

    .line 297
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 298
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onDownKey(IIJ)I

    move-result v0

    .line 302
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->repeatKey(I)V

    .line 305
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mDelayBeforeKeyRepeatStart:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/latin/PointerTracker;)V

    .line 306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    .line 308
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    .line 310
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 311
    return-void
.end method

.method public onMoveEvent(IIJ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 316
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v3, :cond_0

    .line 371
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    .line 319
    .local v1, keyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 320
    .local v0, keyIndex:I
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v2

    .line 321
    .local v2, oldKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 322
    if-nez v2, :cond_3

    .line 325
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 330
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v3, :cond_1

    .line 331
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 332
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 335
    :cond_1
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 336
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    .line 370
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    goto :goto_0

    .line 337
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 342
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_4

    .line 343
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 344
    :cond_4
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 345
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_5

    .line 346
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v4

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 350
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    if-eqz v3, :cond_5

    .line 351
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 352
    invoke-virtual {v1, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveKey(II)I

    move-result v0

    .line 355
    :cond_5
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 356
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->startLongPressTimer(I)V

    goto :goto_1

    .line 359
    :cond_6
    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v3

    if-nez v3, :cond_2

    .line 362
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 363
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    if-eqz v3, :cond_7

    .line 364
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-interface {v3, v4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 365
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/latin/PointerTracker;->resetMultiTap()V

    .line 366
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onMoveToNewKey(III)I

    .line 367
    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    goto :goto_1
.end method

.method public onTouchEvent(IIIJ)V
    .locals 0
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onMoveEvent(IIJ)V

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onDownEvent(IIJ)V

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_0

    .line 276
    :pswitch_4
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/inputmethod/latin/PointerTracker;->onCancelEvent(IIJ)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUpEvent(IIJ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 377
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mHandler:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 378
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/PointerTracker;->showKeyPreviewAndUpdateKey(I)V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsInSlidingKeyInput:Z

    .line 380
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->onUpKey(II)I

    move-result v1

    .line 383
    .local v1, keyIndex:I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isMinorMoveBounce(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyIndex()I

    move-result v1

    .line 386
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyX()I

    move-result p1

    .line 387
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyState:Lcom/android/inputmethod/latin/PointerTracker$KeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/PointerTracker$KeyState;->getKeyY()I

    move-result p2

    .line 389
    :cond_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mIsRepeatableKey:Z

    if-nez v0, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/PointerTracker;->detectAndSendKey(IIIJ)V

    .line 393
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0
.end method

.method public repeatKey(I)V
    .locals 7
    .parameter "keyIndex"

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->getKey(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v6

    .line 411
    .local v6, key:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v6, :cond_0

    .line 414
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/PointerTracker;->detectAndSendKey(IIIJ)V

    .line 416
    :cond_0
    return-void
.end method

.method public setAlreadyProcessed()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    .line 260
    return-void
.end method

.method public setKeyboard([Landroid/inputmethodservice/Keyboard$Key;F)V
    .locals 1
    .parameter "keys"
    .parameter "keyHysteresisDistance"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 194
    :cond_1
    iput-object p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 195
    mul-float v0, p2, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyHysteresisDistanceSquared:I

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyboardLayoutHasBeenChanged:Z

    .line 198
    return-void
.end method

.method public setLongPressKeyTimeout(I)V
    .locals 3
    .parameter "longPressKeyTimeout"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    .line 210
    const-string v0, "PointerTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLongPressKeyTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mLongPressKeyTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 189
    return-void
.end method

.method public updateKey(I)V
    .locals 4
    .parameter "keyIndex"

    .prologue
    .line 240
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeyAlreadyProcessed:Z

    if-eqz v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 243
    .local v1, oldKeyIndex:I
    iput p1, p0, Lcom/android/inputmethod/latin/PointerTracker;->mPreviousKey:I

    .line 244
    if-eq p1, v1, :cond_0

    .line 245
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    const/4 v2, 0x1

    move v0, v2

    .line 248
    .local v0, inside:Z
    :goto_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 251
    .end local v0           #inside:Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/PointerTracker;->isValidKeyIndex(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 253
    iget-object v2, p0, Lcom/android/inputmethod/latin/PointerTracker;->mProxy:Lcom/android/inputmethod/latin/PointerTracker$UIProxy;

    iget-object v3, p0, Lcom/android/inputmethod/latin/PointerTracker;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/android/inputmethod/latin/PointerTracker$UIProxy;->invalidateKey(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_0

    .line 247
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
