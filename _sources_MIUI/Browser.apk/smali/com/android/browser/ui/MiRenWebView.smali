.class public Lcom/android/browser/ui/MiRenWebView;
.super Lcom/android/browser/ui/MiRenWebViewCore;
.source "MiRenWebView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.ui.MiRenWebView"


# instance fields
.field private downXValue:F

.field private downYValue:F

.field private mIsBottom:Z

.field private mIsLeftMost:Z

.field private mIsRightMost:Z

.field private mIsScroll:Z

.field private mIsTop:Z

.field private mScaleGestDetector:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

.field private mScrollRange:I

.field protected mSwitchView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/android/browser/ui/MiRenWebView;->mScrollRange:I

    .line 25
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebView;->mIsScroll:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v1, p0, Lcom/android/browser/ui/MiRenWebView;->mScrollRange:I

    .line 25
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebView;->mIsScroll:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getFuncButtonType()Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 194
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->SimpleMode_On:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    .line 205
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->isReadingModeDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ReadingMode_On:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ReadingMode_Off:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->isForumModeDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ForumMode_On:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ForumMode_Off:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    goto :goto_0

    .line 205
    :cond_4
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->FuncButton_none:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    goto :goto_0
.end method

.method public getVerticalScrollRange()I
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public notifyPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->notifyPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeHorizontalScrollRange()I

    move-result v0

    .line 305
    .local v0, hScrollRange:I
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getWidth()I

    move-result v2

    sub-int v2, v0, v2

    if-lt v1, v2, :cond_0

    .line 306
    iput-boolean v4, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getScrollX()I

    move-result v1

    if-nez v1, :cond_1

    .line 313
    iput-boolean v4, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 319
    :goto_1
    iget v1, p0, Lcom/android/browser/ui/MiRenWebView;->mScrollRange:I

    if-ne v0, v1, :cond_2

    .line 324
    :goto_2
    return-void

    .line 309
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    goto :goto_0

    .line 316
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    goto :goto_1

    .line 323
    :cond_2
    iput v0, p0, Lcom/android/browser/ui/MiRenWebView;->mScrollRange:I

    goto :goto_2
.end method

.method public onForumModeAvailable(Z)V
    .locals 2
    .parameter "available"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onForumModeAvailable(Z)V

    .line 294
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 297
    :cond_0
    return-void
.end method

.method public onReadingModeDataReady(Z)V
    .locals 2
    .parameter "available"

    .prologue
    .line 285
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onReadingModeDataReady(Z)V

    .line 286
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 289
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebView;->mIsScroll:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/ui/MiRenWebViewCore;->onScrollChanged(IIII)V

    .line 237
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 238
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    .line 239
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    .line 244
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    if-nez p2, :cond_2

    .line 248
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_3

    .line 250
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    .line 252
    :cond_3
    if-nez p1, :cond_4

    .line 253
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 255
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/ui/MiRenWebViewCore;->onSizeChanged(IIII)V

    .line 215
    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    if-eqz v1, :cond_1

    .line 216
    iput-boolean v4, p0, Lcom/android/browser/ui/MiRenWebView;->mIsScroll:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/MiRenWebView;->scrollTo(II)V

    .line 218
    iput-boolean v5, p0, Lcom/android/browser/ui/MiRenWebView;->mIsScroll:Z

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 221
    .local v0, activity:Lcom/android/browser/ui/MiRenBrowserActivity;
    iget v1, v0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 222
    iput-boolean v4, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 223
    :cond_2
    iget v1, v0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    if-ne v1, v5, :cond_3

    .line 224
    iput-boolean v5, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    .line 226
    :cond_3
    const/16 v1, 0x9

    invoke-virtual {v0, v4, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/high16 v12, 0x4316

    const/4 v11, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    .line 136
    :goto_0
    return v9

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    .local v0, bRet:Z
    iget-object v9, p0, Lcom/android/browser/ui/MiRenWebView;->mScaleGestDetector:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    if-nez v9, :cond_1

    .line 65
    new-instance v9, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/browser/ui/MiRenWebView;->mScaleGestDetector:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    .line 67
    :cond_1
    iget-object v9, p0, Lcom/android/browser/ui/MiRenWebView;->mScaleGestDetector:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    invoke-virtual {v9, p1}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 68
    iget-object v9, p0, Lcom/android/browser/ui/MiRenWebView;->mScaleGestDetector:Lcom/android/browser/controller/ScaleGestureDetectorWrapper;

    invoke-virtual {v9}, Lcom/android/browser/controller/ScaleGestureDetectorWrapper;->isInMultiTouch()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 74
    .local v1, browserActivity:Lcom/android/browser/ui/MiRenBrowserActivity;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 131
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v9, v0

    .line 136
    goto :goto_0

    .line 76
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, p0, Lcom/android/browser/ui/MiRenWebView;->downYValue:F

    goto :goto_1

    .line 132
    :catch_0
    move-exception v9

    move-object v7, v9

    .local v7, e:Ljava/lang/OutOfMemoryError;
    move v9, v11

    .line 133
    goto :goto_0

    .line 81
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isTextSelectionMode()Z

    move-result v9

    if-nez v9, :cond_3

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 87
    .local v3, currentY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 88
    .local v2, currentX:F
    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downYValue:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 89
    .local v5, differenceY:F
    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    sub-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 91
    .local v4, differenceX:F
    const/high16 v9, 0x42c8

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 92
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/browser/controller/BrowserSettings;->getLeftRightGestureChoice()Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    move-result-object v8

    .line 95
    .local v8, leftRightGestureOpt:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;
    sget-object v9, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_GO_BACK_FORWARD:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    if-ne v8, v9, :cond_5

    .line 96
    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    cmpg-float v9, v9, v2

    if-gez v9, :cond_4

    cmpl-float v9, v4, v12

    if-lez v9, :cond_4

    .line 98
    const/4 v9, 0x0

    const/16 v10, 0xe

    invoke-virtual {v1, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    .line 101
    :cond_4
    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    cmpl-float v9, v9, v2

    if-lez v9, :cond_3

    cmpl-float v9, v4, v12

    if-lez v9, :cond_3

    .line 103
    const/4 v9, 0x0

    const/16 v10, 0xf

    invoke-virtual {v1, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    goto :goto_1

    .line 105
    :cond_5
    sget-object v9, Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;->LEFT_RIGHT_GESTURE_SWITCH_TABS:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;

    if-ne v8, v9, :cond_3

    .line 106
    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsLeftMost:Z

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    cmpg-float v9, v9, v2

    if-gez v9, :cond_6

    cmpl-float v9, v4, v12

    if-lez v9, :cond_6

    .line 108
    const/4 v9, 0x0

    const/16 v10, 0x11

    invoke-virtual {v1, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    .line 111
    :cond_6
    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsRightMost:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downXValue:F

    cmpl-float v9, v9, v2

    if-lez v9, :cond_3

    cmpl-float v9, v4, v12

    if-lez v9, :cond_3

    .line 113
    const/4 v9, 0x0

    const/16 v10, 0x10

    invoke-virtual {v1, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    goto/16 :goto_1

    .line 119
    .end local v2           #currentX:F
    .end local v3           #currentY:F
    .end local v4           #differenceX:F
    .end local v5           #differenceY:F
    .end local v8           #leftRightGestureOpt:Lcom/android/browser/controller/BrowserSettings$LeftRightGestureOption;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isInSelectionMode()Z

    move-result v9

    if-nez v9, :cond_3

    .line 121
    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downYValue:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 122
    .local v6, distance:F
    iget v9, p0, Lcom/android/browser/ui/MiRenWebView;->downYValue:F

    const/high16 v10, 0x41a0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 123
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 124
    :cond_7
    iget-object v9, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isHomePage()Z

    move-result v9

    if-nez v9, :cond_3

    const/high16 v9, 0x4248

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsTop:Z

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/browser/ui/MiRenWebView;->mIsBottom:Z

    if-nez v9, :cond_3

    .line 125
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/browser/controller/BrowserSettings;->getAutoEnterFullscreen()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 126
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 164
    :goto_0
    return v4

    .line 145
    :cond_1
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/BrowserSettings;->getLongClickAction()Lcom/android/browser/controller/BrowserSettings$ClickAction;

    move-result-object v3

    .line 147
    .local v3, longClickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 149
    .local v2, htr:Landroid/webkit/WebView$HitTestResult;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 150
    .local v0, activity:Lcom/android/browser/ui/MiRenBrowserActivity;
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 151
    .local v1, hitType:I
    if-eq v1, v5, :cond_2

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/4 v4, 0x7

    if-eq v1, v4, :cond_2

    const/16 v4, 0x8

    if-ne v1, v4, :cond_4

    .line 155
    :cond_2
    sget-object v4, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_NEW_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    if-ne v3, v4, :cond_3

    .line 156
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    move v4, v5

    .line 157
    goto :goto_0

    .line 159
    :cond_3
    sget-object v4, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_BACKGROUND_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    if-ne v3, v4, :cond_4

    .line 160
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    move v4, v5

    .line 161
    goto :goto_0

    .line 164
    :cond_4
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->performLongClick()Z

    move-result v4

    goto :goto_0
.end method

.method public scrollHorizontal(I)V
    .locals 4
    .parameter "y"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getScrollY()I

    move-result v1

    .line 262
    .local v1, scrollY:I
    if-gez p1, :cond_3

    .line 263
    if-gtz v1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    add-int v3, p1, v1

    if-gez v3, :cond_2

    .line 267
    neg-int p1, v1

    .line 280
    :cond_2
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/browser/ui/MiRenWebView;->scrollBy(II)V

    goto :goto_0

    .line 270
    :cond_3
    if-lez p1, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->getHeight()I

    move-result v0

    .line 272
    .local v0, h:I
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebView;->computeVerticalScrollRange()I

    move-result v2

    .line 273
    .local v2, vScrollRange:I
    add-int v3, v1, v0

    if-ge v3, v2, :cond_0

    .line 276
    add-int v3, p1, v1

    add-int/2addr v3, v0

    if-le v3, v2, :cond_2

    .line 277
    sub-int v3, v2, v1

    sub-int p1, v3, v0

    goto :goto_1
.end method
