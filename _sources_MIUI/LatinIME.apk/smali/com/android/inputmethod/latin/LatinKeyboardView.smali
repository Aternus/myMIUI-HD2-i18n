.class public Lcom/android/inputmethod/latin/LatinKeyboardView;
.super Lcom/android/inputmethod/latin/LatinKeyboardBaseView;
.source "LatinKeyboardView.java"


# static fields
.field static final DEBUG_AUTO_PLAY:Z = false

.field static final DEBUG_LINE:Z = false

.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_OPTIONS_LONGPRESS:I = -0x65

.field static final KEYCODE_PREV_LANGUAGE:I = -0x69

.field static final KEYCODE_VOICE:I = -0x66

.field private static final MSG_TOUCH_DOWN:I = 0x1

.field private static final MSG_TOUCH_UP:I = 0x2


# instance fields
.field private mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mDisableDisambiguation:Z

.field private mDownDelivered:Z

.field private mDroppingEvents:Z

.field mHandler2:Landroid/os/Handler;

.field private mJumpThresholdSquare:I

.field private mLastRowY:I

.field private mLastX:I

.field private mLastY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mPlaying:Z

.field private mStringIndex:I

.field private mStringToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 259
    const/16 v0, 0x100

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 62
    return-void
.end method

.method private findKeys()V
    .locals 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 328
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 329
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 330
    .local v0, code:I
    if-ltz v0, :cond_0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_0

    .line 331
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mAsciiKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v3, v4, v0

    .line 328
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v0           #code:I
    :cond_1
    return-void
.end method

.method private handleSuddenJump(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 150
    .local v8, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 151
    .local v12, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 152
    .local v13, y:I
    const/4 v10, 0x0

    .line 155
    .local v10, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 161
    :cond_1
    const/4 v0, 0x0

    .line 211
    :goto_0
    return v0

    .line 164
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 209
    :cond_3
    :goto_1
    iput v12, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    .line 210
    iput v13, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    move v0, v10

    .line 211
    goto :goto_0

    .line 167
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDisableDisambiguation:Z

    goto :goto_1

    .line 172
    :pswitch_1
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 176
    .local v9, distanceSquare:I
    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    if-le v9, v0, :cond_6

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    if-ge v13, v0, :cond_6

    .line 179
    :cond_4
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    if-nez v0, :cond_5

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 185
    .local v11, translated:Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 188
    .end local v11           #translated:Landroid/view/MotionEvent;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 189
    :cond_6
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 191
    const/4 v10, 0x1

    goto :goto_1

    .line 195
    .end local v9           #distanceSquare:I
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 201
    .restart local v11       #translated:Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 202
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mDroppingEvents:Z

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private invokeOnKey(I)Z
    .locals 3
    .parameter "primaryCode"

    .prologue
    const/4 v2, -0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method private setKeyboardLocal(Landroid/inputmethodservice/Keyboard;)V
    .locals 0
    .parameter "k"

    .prologue
    .line 323
    return-void
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "label"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 117
    .local v0, keyboard:Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_0
    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 349
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->reset()V

    .line 350
    const/4 v2, 0x1

    .line 351
    .local v2, tryGC:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 353
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    const/4 v2, 0x0

    .line 351
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    .line 379
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 96
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 97
    .local v0, primaryCode:I
    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 98
    const/16 v1, -0x65

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 99
    :cond_0
    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    if-ne v1, v2, :cond_1

    .line 101
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v1

    goto :goto_0

    .line 103
    :cond_1
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "me"

    .prologue
    const/4 v3, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .line 224
    .local v0, keyboard:Lcom/android/inputmethod/latin/LatinKeyboard;
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->handleSuddenJump(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 244
    :goto_0
    return v2

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->getLanguageChangeDirection()I

    move-result v1

    .line 234
    .local v1, languageDirection:I
    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getOnKeyboardActionListener()Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v2

    if-ne v1, v3, :cond_2

    const/16 v3, -0x68

    :goto_1
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastY:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 238
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 239
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 240
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 235
    :cond_2
    const/16 v3, -0x69

    goto :goto_1

    .line 244
    .end local v1           #languageDirection:I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .parameter "newKeyboard"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 81
    .local v0, oldKeyboard:Landroid/inputmethodservice/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0           #oldKeyboard:Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboard;->keyReleased()V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 87
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 88
    iget v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    iget v2, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 90
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mLastRowY:I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardView;->setKeyboardLocal(Landroid/inputmethodservice/Keyboard;)V

    .line 92
    return-void
.end method

.method public setPhoneKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 0
    .parameter "phoneKeyboard"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 66
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 2
    .parameter "previewEnabled"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinKeyboardView;->mPhoneKeyboard:Landroid/inputmethodservice/Keyboard;

    if-ne v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    goto :goto_0
.end method

.method public setShiftLocked(Z)Z
    .locals 2
    .parameter "shiftLocked"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    .line 129
    .local v0, keyboard:Landroid/inputmethodservice/Keyboard;
    instance-of v1, v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/android/inputmethod/latin/LatinKeyboard;

    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboard;->setShiftLocked(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->invalidateAllKeys()V

    .line 132
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .restart local v0       #keyboard:Landroid/inputmethodservice/Keyboard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 345
    return-void
.end method
