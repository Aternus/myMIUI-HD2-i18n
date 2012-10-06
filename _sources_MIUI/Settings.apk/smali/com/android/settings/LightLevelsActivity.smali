.class public Lcom/android/settings/LightLevelsActivity;
.super Landroid/app/Activity;
.source "LightLevelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnValues:[I

.field private mButtons:Landroid/widget/TextView;

.field private mDefaults:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditedId:I

.field private mEditor:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasChanges:Z

.field private mHasKeyboard:Z

.field private mKbValues:[I

.field private mKeyboard:Landroid/widget/TextView;

.field private mLcdValues:[I

.field private mLevels:[I

.field private mNumLevels:Landroid/widget/Button;

.field private mReload:Landroid/widget/Button;

.field private mSave:Landroid/widget/Button;

.field private mScreen:Landroid/widget/TextView;

.field private mSensor:Landroid/widget/TextView;

.field private mSensorRange:I

.field private mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 350
    new-instance v0, Lcom/android/settings/LightLevelsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/LightLevelsActivity$3;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    iput-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LightLevelsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->dialogOk()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LightLevelsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LightLevelsActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/LightLevelsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createButton(ILjava/lang/String;)Landroid/widget/Button;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    .line 490
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 491
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 494
    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 495
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    return-object v0
.end method

.method private createEditor()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 396
    const v3, 0x7f0c00b6

    invoke-virtual {p0, v3}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 399
    .local v2, table:Landroid/widget/TableLayout;
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 400
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 409
    .local v1, row:Landroid/widget/TableRow;
    const-string v3, "0"

    invoke-direct {p0, v7, v3}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 412
    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v7

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 415
    const/16 v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 418
    const/16 v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 421
    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_1

    .line 422
    const/16 v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 425
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 427
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ge v0, v3, :cond_3

    .line 428
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 431
    add-int/lit16 v3, v0, 0x7d0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 434
    add-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 437
    add-int/lit16 v3, v0, 0xbb8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 440
    add-int/lit16 v3, v0, 0xfa0

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 443
    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_2

    .line 444
    add-int/lit16 v3, v0, 0x1388

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 447
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 450
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 453
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x7d0

    sub-int/2addr v3, v6

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 457
    const v3, 0x7fffffff

    const/16 v4, 0x221e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 460
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 465
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 470
    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_4

    .line 471
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 475
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 477
    invoke-virtual {v2, v7, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 478
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 479
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 480
    iget-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_5

    .line 481
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 483
    :cond_5
    return-void
.end method

.method private createRow()Landroid/widget/TableRow;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, row:Landroid/widget/TableRow;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setGravity(I)V

    .line 511
    return-object v0
.end method

.method private createTextView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    .line 500
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, tv:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 502
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 505
    return-object v0
.end method

.method private dialogOk()V
    .locals 10

    .prologue
    const/16 v8, 0x1388

    const/16 v6, 0xfa0

    const/16 v7, 0xbb8

    const/4 v9, 0x1

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, changed:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 194
    .local v3, value:I
    const/16 v2, 0xff

    .line 195
    .local v2, valLimitHi:I
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, -0x539

    if-ne v4, v5, :cond_2

    .line 196
    if-le v3, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_0

    .line 197
    sub-int v4, v3, v9

    new-array v1, v4, [I

    .line 198
    .local v1, tmp:[I
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    .line 201
    new-array v1, v3, [I

    .line 202
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    .line 205
    new-array v1, v3, [I

    .line 206
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    .line 209
    new-array v1, v3, [I

    .line 210
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    .line 213
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createEditor()V

    .line 214
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 215
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1           #tmp:[I
    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 252
    iput-boolean v9, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 253
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    :cond_1
    return-void

    .line 217
    .restart local v2       #valLimitHi:I
    .restart local v3       #value:I
    :cond_2
    :try_start_1
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v7, :cond_3

    .line 218
    if-ltz v3, :cond_0

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    if-gt v3, v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v6, 0x7d0

    sub-int/2addr v5, v6

    aput v3, v4, v5

    .line 220
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x3e8

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sub-int v5, v3, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :cond_3
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v7, :cond_4

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v6, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_0

    if-gt v3, v2, :cond_0

    .line 229
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v7

    aput v3, v4, v5

    .line 230
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :cond_4
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v6, :cond_5

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-ge v4, v8, :cond_5

    .line 234
    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    .line 236
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v6

    aput v3, v4, v5

    .line 237
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :cond_5
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    if-lt v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 241
    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    .line 243
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    iget v5, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    sub-int/2addr v5, v8

    aput v3, v4, v5

    .line 244
    iget v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 248
    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private dp2px(I)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private intArrayToString([I)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    const/4 v3, 0x1

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 343
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v3

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadData(Z)V
    .locals 5
    .parameter "defaults"

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "light_sensor_levels"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    .line 264
    const-string v3, "light_sensor_lcd_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    .line 267
    const-string v3, "light_sensor_button_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    .line 270
    const-string v3, "light_sensor_keyboard_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    .line 274
    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v0, v3

    .line 275
    .local v0, N:I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_1

    .line 277
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "sanity check failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v0           #N:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 281
    .local v2, e:Ljava/lang/Exception;
    const/4 p1, 0x1

    .line 285
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->createEditor()V

    .line 296
    return-void
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .locals 4
    .parameter "intArray"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 301
    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [I

    .line 309
    .local v1, result:[I
    :cond_1
    return-object v1

    .line 303
    .end local v1           #result:[I
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 305
    .restart local v1       #result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 306
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private save()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-string v9, "lights_changed"

    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, doSave:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 316
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/4 v6, 0x1

    sub-int v6, v1, v6

    aget v5, v5, v6

    if-gt v4, v5, :cond_2

    .line 317
    const v4, 0x7f0904cb

    invoke-virtual {p0, v4}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 318
    const/4 v0, 0x0

    .line 322
    :cond_0
    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_levels"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_lcd_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_button_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_keyboard_values"

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    const-wide/16 v5, 0x0

    invoke-static {v4, v9, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 333
    .local v2, tag:J
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    invoke-static {v4, v9, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 335
    iput-boolean v8, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 336
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    .end local v2           #tag:J
    :cond_1
    return-void

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private updateButtons()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x1388

    const/16 v6, 0xfa0

    const/16 v5, 0xbb8

    .line 133
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->save()V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    if-ne p1, v4, :cond_2

    .line 136
    invoke-direct {p0, v9}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    .line 137
    iput-boolean v9, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 138
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    .line 140
    invoke-direct {p0, v8}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    .line 141
    iput-boolean v8, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 142
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    .line 144
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 147
    const/16 v4, -0x539

    iput v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    .line 148
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 151
    .local v0, id:I
    const/4 v3, -0x1

    .line 152
    .local v3, value:I
    const/4 v2, 0x0

    .line 153
    .local v2, min:I
    const/4 v1, 0x0

    .line 154
    .local v1, max:I
    const/16 v4, 0x7d0

    if-lt v0, v4, :cond_5

    if-ge v0, v5, :cond_5

    .line 155
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLevels:[I

    const/16 v5, 0x7d0

    sub-int v5, v0, v5

    aget v3, v4, v5

    .line 156
    const/4 v2, 0x0

    .line 157
    iget v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    .line 176
    :goto_1
    if-ltz v3, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 180
    iput v0, p0, Lcom/android/settings/LightLevelsActivity;->mEditedId:I

    .line 181
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 158
    :cond_5
    if-lt v0, v5, :cond_6

    if-ge v0, v6, :cond_6

    .line 159
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mLcdValues:[I

    sub-int v5, v0, v5

    aget v3, v4, v5

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 163
    const/16 v1, 0xff

    goto :goto_1

    .line 164
    :cond_6
    if-lt v0, v6, :cond_7

    if-ge v0, v7, :cond_7

    .line 165
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mBtnValues:[I

    sub-int v5, v0, v6

    aget v3, v4, v5

    .line 166
    const/4 v2, 0x0

    .line 167
    const/16 v1, 0xff

    goto :goto_1

    .line 168
    :cond_7
    if-lt v0, v7, :cond_8

    const/16 v4, 0x1770

    if-ge v0, v4, :cond_8

    .line 169
    iget-object v4, p0, Lcom/android/settings/LightLevelsActivity;->mKbValues:[I

    sub-int v5, v0, v7

    aget v3, v4, v5

    .line 170
    const/4 v2, 0x0

    .line 171
    const/16 v1, 0xff

    goto :goto_1

    .line 173
    :cond_8
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->setContentView(I)V

    .line 64
    const v1, 0x7f0904bd

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->setTitle(I)V

    .line 66
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensorRange:I

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    .line 69
    const v1, 0x7f0c00b5

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    .line 70
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSave:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0c00b4

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0c00b3

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mReload:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0c00a7

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0c00aa

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0c00ad

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0c00b0

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    .line 80
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v3, :cond_0

    .line 83
    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    const v2, 0x7f0c00ae

    invoke-virtual {p0, v2}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 85
    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0c00bc

    invoke-virtual {p0, v2}, Lcom/android/settings/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    .line 87
    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    .line 92
    :goto_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    .line 93
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/LightLevelsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LightLevelsActivity$2;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/LightLevelsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LightLevelsActivity$1;-><init>(Lcom/android/settings/LightLevelsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    .line 109
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    invoke-direct {p0, v4}, Lcom/android/settings/LightLevelsActivity;->loadData(Z)V

    .line 115
    iput-boolean v4, p0, Lcom/android/settings/LightLevelsActivity;->mHasChanges:Z

    .line 116
    invoke-direct {p0}, Lcom/android/settings/LightLevelsActivity;->updateButtons()V

    .line 117
    return-void

    .line 89
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    return-void
.end method
