.class public Lcom/android/inputmethod/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/RecognitionView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionView"


# instance fields
.field private mButton:Landroid/view/View;

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLevel:I

.field private mMaxMicrophoneLevel:F

.field private mMinMicrophoneLevel:F

.field private mProgress:Landroid/view/View;

.field private mSpeakNow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/inputmethod/voice/RecognitionView$State;

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateVolumeRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "context"
    .parameter "clickListener"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    .line 74
    sget-object v3, Lcom/android/inputmethod/voice/RecognitionView$State;->READY:Lcom/android/inputmethod/voice/RecognitionView$State;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    .line 80
    new-instance v3, Lcom/android/inputmethod/voice/RecognitionView$1;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/voice/RecognitionView$1;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 104
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 106
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_min_microphone_level"

    const/high16 v4, 0x4170

    invoke-static {v0, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMinMicrophoneLevel:F

    .line 110
    const-string v3, "latin_ime_max_microphone_level"

    const/high16 v4, 0x41f0

    invoke-static {v0, v3, v4}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMaxMicrophoneLevel:F

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    .line 117
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020040

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020042

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020043

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020044

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020045

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const v3, 0x7f02003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 126
    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 129
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 132
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 135
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/RecognitionView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/RecognitionView;Lcom/android/inputmethod/voice/RecognitionView$State;)Lcom/android/inputmethod/voice/RecognitionView$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/RecognitionView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMinMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/inputmethod/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/inputmethod/voice/RecognitionView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/inputmethod/voice/RecognitionView;->exitWorking()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/RecognitionView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mMaxMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/RecognitionView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/inputmethod/voice/RecognitionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/inputmethod/voice/RecognitionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLevel:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/inputmethod/voice/RecognitionView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method private exitWorking()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 5
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 224
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 225
    .local v1, from:I
    add-int v0, v1, p3

    .line 226
    .local v0, end:I
    const/4 v2, 0x0

    .line 227
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 228
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_0
    div-int v4, v2, p3

    return v4
.end method

.method private prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "spinVisible"
    .parameter "text"
    .parameter "image"
    .parameter "btnTxt"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .locals 31
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 244
    .local v22, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    .line 245
    .local v12, h:I
    if-lez v22, :cond_0

    if-gtz v12, :cond_1

    .line 307
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p1
    .restart local p2
    :cond_1
    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move v1, v12

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 250
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v7, c:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    const/16 v26, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    sget-object v26, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    const/16 v26, 0x90

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    new-instance v10, Landroid/graphics/CornerPathEffect;

    const/high16 v26, 0x4040

    move-object v0, v10

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 258
    .local v10, effect:Landroid/graphics/PathEffect;
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v16

    .line 262
    .local v16, numSamples:I
    if-nez p3, :cond_3

    .line 263
    move/from16 v11, v16

    .line 268
    .local v11, endIndex:I
    :goto_1
    const/16 v26, 0x7d0

    sub-int v21, p2, v26

    .line 269
    .local v21, startIndex:I
    if-gez v21, :cond_2

    .line 270
    const/16 v21, 0x0

    .line 272
    :cond_2
    const/16 v15, 0xc8

    .line 273
    .local v15, numSamplePerWave:I
    const/high16 v19, 0x3920

    .line 275
    .local v19, scale:F
    sub-int v26, v11, v21

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xc8

    move v8, v0

    .line 276
    .local v8, count:I
    const/high16 v26, 0x3f80

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move v0, v8

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v9, v26, v27

    .line 277
    .local v9, deltaX:F
    div-int/lit8 v26, v12, 0x2

    const/16 v27, 0x8

    sub-int v25, v26, v27

    .line 278
    .local v25, yMax:I
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 279
    .local v18, path:Landroid/graphics/Path;
    const/16 v26, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    move-object v0, v7

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    const/16 v23, 0x0

    .line 281
    .local v23, x:F
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v8, :cond_5

    .line 283
    const/16 v26, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v21

    move v2, v13

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v5

    .line 284
    .local v5, avabs:I
    and-int/lit8 v26, v13, 0x1

    if-nez v26, :cond_4

    const/16 v26, -0x1

    move/from16 v20, v26

    .line 285
    .local v20, sign:I
    :goto_3
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v26, v0

    mul-int v27, v5, v12

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3920

    mul-float v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v24, v26, v27

    .line 286
    .local v24, y:F
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    add-float v23, v23, v9

    .line 288
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 265
    .end local v5           #avabs:I
    .end local v8           #count:I
    .end local v9           #deltaX:F
    .end local v11           #endIndex:I
    .end local v13           #i:I
    .end local v15           #numSamplePerWave:I
    .end local v18           #path:Landroid/graphics/Path;
    .end local v19           #scale:F
    .end local v20           #sign:I
    .end local v21           #startIndex:I
    .end local v23           #x:F
    .end local v24           #y:F
    .end local v25           #yMax:I
    :cond_3
    move/from16 v0, p3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    .restart local v11       #endIndex:I
    goto/16 :goto_1

    .line 284
    .restart local v5       #avabs:I
    .restart local v8       #count:I
    .restart local v9       #deltaX:F
    .restart local v13       #i:I
    .restart local v15       #numSamplePerWave:I
    .restart local v18       #path:Landroid/graphics/Path;
    .restart local v19       #scale:F
    .restart local v21       #startIndex:I
    .restart local v23       #x:F
    .restart local v25       #yMax:I
    :cond_4
    const/16 v26, 0x1

    move/from16 v20, v26

    goto :goto_3

    .line 290
    .end local v5           #avabs:I
    :cond_5
    const/high16 v26, 0x4080

    cmpl-float v26, v9, v26

    if-lez v26, :cond_6

    .line 291
    const/high16 v26, 0x4040

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    :goto_4
    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 299
    .local v14, mProgressParams:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v26, 0x0

    move v0, v12

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v14

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    const/16 v26, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 293
    .end local v14           #mProgressParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local p1
    .restart local p2
    :cond_6
    const/16 v26, 0x1

    move v0, v9

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3fa999999999999aL

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$7;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$7;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$2;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/voice/RecognitionView$5;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public showInitializing()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$3;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public showListening()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$4;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$4;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView$6;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public updateVoiceMeter(F)V
    .locals 0
    .parameter "rmsdB"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mVolume:F

    .line 176
    return-void
.end method
