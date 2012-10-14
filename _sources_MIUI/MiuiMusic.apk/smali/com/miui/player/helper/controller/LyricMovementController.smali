.class public Lcom/miui/player/helper/controller/LyricMovementController;
.super Ljava/lang/Object;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/LyricMovementController$1;,
        Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;,
        Lcom/miui/player/helper/controller/LyricMovementController$LyricView;,
        Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;,
        Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x3e8

.field public static final LYRIC_PROGRESS_MODIFY_MODE:I = 0x1

.field public static final LYRIC_SCROLL_AUTO:I = 0x2

.field public static final LYRIC_SCROLL_DRAG:I = 0x1

.field public static final LYRIC_SCROLL_NORMAL:I = 0x0

.field public static final LYRIC_STATUS_ANIM:I = 0x2

.field public static final LYRIC_STATUS_DRAG:I = 0x1

.field public static final LYRIC_STATUS_PLAY:I = 0x0

.field private static final MSG_PLAY:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field private static final OFFSET_LINE_DRAG:I = 0x1

.field private static final OFFSET_LINE_PLAY:I = 0x5

.field private static final OFFSET_LINE_PLAY_AFTER:I = 0x8

.field private static final SINGLE_LINE_PADDING:Ljava/lang/String; = "\n\n\n\n\n"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastLyricLine:I

.field private mLastPosition:J

.field private mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

.field private mLyricMode:I

.field private mLyricStatus:I

.field private final mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

.field private mOffsetLineNumArr:[I

.field private mOrginLastPosition:J

.field private mPrevisoucMoveEventHeight:I

.field private mScrollMode:I

.field private final mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

.field private final mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/view/ExtendScrollView;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    .line 394
    iput v2, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    .line 398
    new-instance v0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;

    invoke-direct {v0, p0, v3}, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastLyricLine:I

    .line 51
    iput v2, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricMode:I

    .line 52
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    .line 53
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    new-instance v1, Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/view/ExtendScrollView;->setOnExtendScrollListener(Lcom/miui/player/helper/controller/ExtendScroller$OnExtendScrollListener;)V

    .line 54
    new-instance v0, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    .line 56
    new-instance v0, Lcom/miui/player/helper/VerticalSlideAnimation;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v0, v1}, Lcom/miui/player/helper/VerticalSlideAnimation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;

    .line 57
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/VerticalSlideAnimation;->setDuration(J)V

    .line 58
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;

    new-instance v1, Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/player/helper/controller/LyricMovementController$SlideAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/VerticalSlideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/player/helper/controller/LyricMovementController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/player/helper/controller/LyricMovementController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/controller/LyricMovementController$LyricView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/LyricParser$LyricShot;IF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/helper/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;IF)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/VerticalSlideAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;

    return-object v0
.end method

.method private drawLyric(IILcom/miui/player/helper/LyricParser$LyricShot;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "lyricShot"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->getOffsetNumArr(Lcom/miui/player/helper/LyricParser$Lyric;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->drawLyric(Lcom/miui/player/helper/LyricParser$Lyric;Lcom/miui/player/helper/LyricParser$LyricShot;II)V

    .line 263
    return-void
.end method

.method private getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;IF)I
    .locals 15
    .parameter "lyricShot"
    .parameter "spaceLine"
    .parameter "lineHeight"

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, height:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    move v6, v0

    .line 243
    .local v6, relIndex:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    move v7, v0

    add-int v2, v7, p2

    .line 244
    .local v2, absIndex:I
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-lt v2, v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v7, v7

    if-lt v2, v7, :cond_1

    .line 245
    :cond_0
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v7, v0

    int-to-double v9, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v3, v7

    .line 253
    :goto_0
    return v3

    .line 247
    :cond_1
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v7, v7, v2

    iget-object v8, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    const/4 v9, 0x1

    sub-int v9, v2, v9

    aget v8, v8, v9

    sub-int v4, v7, v8

    .line 248
    .local v4, lineCount:I
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    const/4 v8, 0x1

    sub-int v8, v2, v8

    aget v7, v7, v8

    sub-int v5, v7, p2

    .line 250
    .local v5, offsetLine:I
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide v7, v0

    int-to-double v9, v5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    move-wide v11, v0

    int-to-double v13, v4

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v3, v7

    goto :goto_0
.end method

.method private isPlaying()Z
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lryicProgressModify(I)Z
    .locals 13
    .parameter "deltaHeight"

    .prologue
    .line 104
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    if-nez v10, :cond_0

    .line 105
    const/4 v10, 0x0

    .line 146
    :goto_0
    return v10

    .line 108
    :cond_0
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    iget-wide v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOrginLastPosition:J

    invoke-virtual {v10, v11, v12}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v4

    .line 109
    .local v4, lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    iget v10, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    if-gtz v10, :cond_1

    .line 110
    const/4 v10, 0x0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    invoke-virtual {v10}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v2

    .line 113
    .local v2, lineHeight:F
    if-lez p1, :cond_2

    move v9, p1

    .line 114
    .local v9, tempHeight:I
    :goto_1
    int-to-float v10, v9

    cmpg-float v10, v10, v2

    if-gez v10, :cond_3

    .line 115
    const/4 v10, 0x0

    goto :goto_0

    .line 113
    .end local v9           #tempHeight:I
    :cond_2
    neg-int v10, p1

    move v9, v10

    goto :goto_1

    .line 117
    .restart local v9       #tempHeight:I
    :cond_3
    int-to-float v10, v9

    div-float/2addr v10, v2

    float-to-int v5, v10

    .line 118
    .local v5, moveLineNum:I
    const/4 v3, 0x0

    .line 119
    .local v3, lineIndex:I
    const/4 v1, 0x0

    .line 121
    .local v1, lineCount:I
    if-lez p1, :cond_6

    .line 122
    iget v0, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 123
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v11, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v11, v11, v0

    sub-int v1, v10, v11

    .line 124
    if-le v1, v5, :cond_5

    .line 125
    add-int/lit8 v3, v0, 0x1

    .line 126
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v11, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v12, v0, 0x1

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 141
    .end local v0           #i:I
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    add-int/lit8 v11, v3, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v11, v11, v3

    sub-int v6, v10, v11

    .line 142
    .local v6, offsetLine:I
    int-to-float v10, v9

    int-to-float v11, v1

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    div-float/2addr v10, v2

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v7, v10

    .line 144
    .local v7, percent:D
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v10, v4, v3, v7, v8}, Lcom/miui/player/helper/LyricParser$Lyric;->correctLyric(Lcom/miui/player/helper/LyricParser$LyricShot;ID)V

    .line 145
    iget-wide v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOrginLastPosition:J

    const/4 v12, 0x1

    invoke-virtual {p0, v10, v11, v12}, Lcom/miui/player/helper/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 146
    const/4 v10, 0x1

    goto :goto_0

    .line 122
    .end local v6           #offsetLine:I
    .end local v7           #percent:D
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 130
    .end local v0           #i:I
    :cond_6
    if-gez p1, :cond_4

    .line 131
    iget v0, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    .restart local v0       #i:I
    :goto_4
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    array-length v10, v10

    if-ge v0, v10, :cond_4

    .line 132
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    aget v10, v10, v0

    iget-object v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v12, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 133
    if-le v1, v5, :cond_7

    .line 134
    iget-object v10, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    const/4 v11, 0x1

    sub-int v11, v0, v11

    aget v10, v10, v11

    iget-object v11, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    iget v12, v4, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    aget v11, v11, v12

    sub-int v1, v10, v11

    .line 135
    const/4 v10, 0x1

    sub-int v3, v0, v10

    .line 136
    goto :goto_3

    .line 131
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private scrollLyric(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/ui/view/ExtendScrollView;->scrollTo(II)V

    .line 191
    return-void
.end method


# virtual methods
.method public onVerticalScroll(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 63
    .local v0, action:I
    if-eq v0, v9, :cond_1

    .line 64
    if-ne v0, v5, :cond_0

    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricMode:I

    if-ne v3, v5, :cond_0

    .line 65
    iput v8, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    .line 66
    iput v8, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    .line 67
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    iget-wide v4, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    iget-wide v6, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOrginLastPosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/LyricParser$Lyric;->addOffset(I)V

    .line 68
    iput v9, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollMode:I

    .line 69
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v3, v8}, Lcom/miui/player/ui/view/ExtendScrollView;->setNeedFling(Z)V

    :cond_0
    move v3, v8

    .line 96
    :goto_0
    return v3

    .line 74
    :cond_1
    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v3, :cond_2

    .line 75
    iput v5, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    .line 76
    iget-wide v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/player/helper/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 80
    :cond_2
    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricMode:I

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    if-ne v3, v5, :cond_5

    .line 82
    iput v5, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollMode:I

    .line 83
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v3}, Lcom/miui/player/ui/view/ExtendScrollView;->getScrollY()I

    move-result v1

    .line 84
    .local v1, eventheight:I
    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    if-gtz v3, :cond_3

    .line 85
    iput v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    .line 86
    iget-wide v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    iput-wide v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOrginLastPosition:J

    .line 88
    :cond_3
    iget v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/miui/player/helper/controller/LyricMovementController;->lryicProgressModify(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    iput v1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mPrevisoucMoveEventHeight:I

    :cond_4
    move v3, v8

    .line 91
    goto :goto_0

    .line 93
    .end local v1           #eventheight:I
    :cond_5
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 95
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v8

    .line 96
    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/player/helper/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 195
    return-void
.end method

.method public refreshLyric(JZ)V
    .locals 12
    .parameter "pos"
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    .line 198
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    if-nez v7, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iput-wide p1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, isScrollAutoMode:Z
    iget v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 204
    const/4 v7, 0x0

    iput v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollMode:I

    .line 205
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollView:Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-virtual {v7, v11}, Lcom/miui/player/ui/view/ExtendScrollView;->setNeedFling(Z)V

    .line 206
    const/4 v1, 0x1

    .line 208
    :cond_2
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mScrollMode:I

    if-ne v7, v11, :cond_3

    if-eqz p3, :cond_0

    .line 212
    :cond_3
    const/4 v5, 0x5

    .line 213
    .local v5, spaceLine:I
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v7, p1, p2}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v3

    .line 214
    .local v3, lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    if-eqz v1, :cond_4

    .line 215
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    iget v8, v3, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v3, v8, v9, v10}, Lcom/miui/player/helper/LyricParser$Lyric;->correctLyric(Lcom/miui/player/helper/LyricParser$LyricShot;ID)V

    .line 216
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v7, p1, p2}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v3

    .line 219
    :cond_4
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    invoke-virtual {v7}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v2

    .line 220
    .local v2, lineHeight:F
    const/4 v6, -0x5

    .line 221
    .local v6, startLine:I
    iget-object v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v7}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v0

    .line 222
    .local v0, endLine:I
    iget v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I

    if-ne v7, v11, :cond_7

    .line 223
    add-int/lit8 v0, v0, 0x1

    .line 229
    :goto_1
    if-nez p3, :cond_5

    iget v7, v3, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    iget v8, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastLyricLine:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastLyricLine:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 230
    :cond_5
    iget v7, v3, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    iput v7, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastLyricLine:I

    .line 231
    invoke-direct {p0, v6, v0, v3}, Lcom/miui/player/helper/controller/LyricMovementController;->drawLyric(IILcom/miui/player/helper/LyricParser$LyricShot;)V

    .line 234
    :cond_6
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricMovementController;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    const/4 v7, 0x5

    invoke-direct {p0, v3, v7, v2}, Lcom/miui/player/helper/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;IF)I

    move-result v4

    .line 236
    .local v4, scroll:I
    invoke-direct {p0, v4}, Lcom/miui/player/helper/controller/LyricMovementController;->scrollLyric(I)V

    goto :goto_0

    .line 225
    .end local v4           #scroll:I
    :cond_7
    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V
    .locals 1
    .parameter "lyric"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eq v0, p1, :cond_1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/miui/player/helper/LyricParser$Lyric;->decorate()V

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mOffsetLineNumArr:[I

    .line 164
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLastLyricLine:I

    .line 165
    return-void
.end method

.method public setLyricMode(I)V
    .locals 0
    .parameter "lryicMode"

    .prologue
    .line 168
    iput p1, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricMode:I

    .line 169
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->setHintText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void
.end method
