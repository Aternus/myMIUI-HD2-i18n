.class public Lcom/android/mms/ui/AttachmentProcessor;
.super Ljava/lang/Object;
.source "AttachmentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;,
        Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;
    }
.end annotation


# static fields
.field private static final AUDIO_URI:Ljava/lang/String;

.field private static final IMAGE_URI:Ljava/lang/String;

.field private static final VIDEO_URI:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

.field private mAttachmentPanel:Landroid/widget/ViewSwitcher;

.field private mAttachmentPanelPreviousWidth:I

.field private mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

.field private mAttachmentTypeScreens:Landroid/widget/ScreenView;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideLeftInAnimation:Landroid/view/animation/Animation;

.field private mSlideLeftOutAnimation:Landroid/view/animation/Animation;

.field private mSlideRightInAnimation:Landroid/view/animation/Animation;

.field private mSlideRightOutAnimation:Landroid/view/animation/Animation;

.field private mSmileyBack:Landroid/view/View;

.field private mSmileyPanel:Landroid/view/View;

.field private mSmileyScreens:Landroid/view/ViewGroup;

.field private mSmileyTabWidget:Landroid/widget/TabWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v1, "external"

    .line 77
    const-string v0, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->VIDEO_URI:Ljava/lang/String;

    .line 79
    const-string v0, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->IMAGE_URI:Ljava/lang/String;

    .line 81
    const-string v0, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentProcessor;->AUDIO_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    new-instance v2, Lcom/android/mms/ui/AttachmentProcessor$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/AttachmentProcessor$5;-><init>(Lcom/android/mms/ui/AttachmentProcessor;)V

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    .line 103
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d0062

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScreenView;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    .line 104
    new-instance v2, Lcom/android/mms/ui/AttachmentTypeListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/AttachmentTypeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    .line 106
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d0061

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    .line 107
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d0063

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyPanel:Landroid/view/View;

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d006a

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    .line 109
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 111
    move v1, v0

    .line 112
    .local v1, index:I
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/mms/ui/AttachmentProcessor$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/AttachmentProcessor$1;-><init>(Lcom/android/mms/ui/AttachmentProcessor;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1           #index:I
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f0d006b

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    .line 120
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyBack:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/AttachmentProcessor$BackTouchListener;-><init>(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/AttachmentProcessor$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f040004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    .line 124
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f040005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    .line 125
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    .line 126
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v3, 0x7f040007

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    .line 128
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->selectSmileyTab(I)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentProcessor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->selectSmileyTab(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AttachmentProcessor;)Lcom/android/mms/ui/MessageEditableActivityBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/AttachmentProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->backspace()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/AttachmentProcessor;Lcom/android/mms/ui/StaticGridView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/AttachmentProcessor;->loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V

    return-void
.end method

.method private addAudio(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 816
    if-eqz p1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 818
    const v1, 0x7f0900d1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 820
    :cond_0
    return-void
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "AttachmentProcessor"

    .line 795
    const-string v0, "AttachmentProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 798
    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 800
    :cond_0
    const-string v0, "AttachmentProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImage: resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    .line 806
    :goto_0
    return-void

    .line 805
    :cond_1
    const v1, 0x7f0900d2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    goto :goto_0
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 809
    if-eqz p1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 811
    const v1, 0x7f0900d3

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAddAttachmentError(II)V

    .line 813
    :cond_0
    return-void
.end method

.method private arrangeAttachmentTypeScreens(I)V
    .locals 14
    .parameter "width"

    .prologue
    .line 243
    const/16 v1, 0x320

    if-ge p1, v1, :cond_1

    .line 244
    const/4 v3, 0x3

    .line 245
    .local v3, columnCount:I
    const/4 v2, 0x2

    .line 246
    .local v2, rowCount:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    const v4, 0x7f020009

    invoke-virtual {v1, v4}, Landroid/widget/ScreenView;->setBackgroundResource(I)V

    .line 247
    const v1, 0x7f0a0014

    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v11

    .line 248
    .local v11, screenHeight:I
    const v1, 0x7f0a0015

    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v5

    .line 256
    .local v5, rowHeight:I
    :goto_0
    mul-int v10, v3, v2

    .line 257
    .local v10, screenGridCount:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getCount()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    div-int/2addr v1, v10

    add-int/lit8 v9, v1, 0x1

    .line 259
    .local v9, screenCount:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v4, -0x2

    const/16 v6, 0x31

    invoke-direct {v13, v1, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 264
    .local v13, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    mul-int v4, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13, v1, v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 265
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    invoke-virtual {v1, v13}, Landroid/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 266
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    invoke-virtual {v1}, Landroid/widget/ScreenView;->removeAllScreens()V

    .line 268
    const/4 v12, 0x0

    .local v12, screenIndex:I
    :goto_1
    if-ge v12, v9, :cond_3

    .line 269
    new-instance v0, Lcom/android/mms/ui/StaticGridView;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    div-int v4, p1, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 273
    .local v0, gridView:Lcom/android/mms/ui/StaticGridView;
    const/4 v7, 0x0

    .local v7, gridIndex:I
    :goto_2
    if-ge v7, v10, :cond_0

    .line 274
    mul-int v1, v12, v2

    mul-int/2addr v1, v3

    add-int v8, v7, v1

    .line 275
    .local v8, listIndex:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getCount()I

    move-result v1

    if-lt v8, v1, :cond_2

    .line 287
    .end local v8           #listIndex:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 268
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 250
    .end local v0           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v2           #rowCount:I
    .end local v3           #columnCount:I
    .end local v5           #rowHeight:I
    .end local v7           #gridIndex:I
    .end local v9           #screenCount:I
    .end local v10           #screenGridCount:I
    .end local v11           #screenHeight:I
    .end local v12           #screenIndex:I
    .end local v13           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x5

    .line 251
    .restart local v3       #columnCount:I
    const/4 v2, 0x1

    .line 252
    .restart local v2       #rowCount:I
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    const v4, 0x7f020008

    invoke-virtual {v1, v4}, Landroid/widget/ScreenView;->setBackgroundResource(I)V

    .line 253
    const v1, 0x7f0a0016

    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v11

    .line 254
    .restart local v11       #screenHeight:I
    const v1, 0x7f0a0017

    invoke-direct {p0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v5

    .restart local v5       #rowHeight:I
    goto :goto_0

    .line 278
    .restart local v0       #gridView:Lcom/android/mms/ui/StaticGridView;
    .restart local v7       #gridIndex:I
    .restart local v8       #listIndex:I
    .restart local v9       #screenCount:I
    .restart local v10       #screenGridCount:I
    .restart local v12       #screenIndex:I
    .restart local v13       #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeListAdapter:Lcom/android/mms/ui/AttachmentTypeListAdapter;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v4, v6}, Lcom/android/mms/ui/AttachmentTypeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 279
    .local v6, grid:Landroid/view/View;
    new-instance v1, Lcom/android/mms/ui/AttachmentProcessor$2;

    invoke-direct {v1, p0, v8}, Lcom/android/mms/ui/AttachmentProcessor$2;-><init>(Lcom/android/mms/ui/AttachmentProcessor;I)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v0, v6}, Lcom/android/mms/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 289
    .end local v0           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v6           #grid:Landroid/view/View;
    .end local v7           #gridIndex:I
    .end local v8           #listIndex:I
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentTypeScreens:Landroid/widget/ScreenView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 290
    .end local v2           #rowCount:I
    return-void
.end method

.method private arrangeSmileyScreens(I)V
    .locals 22
    .parameter "width"

    .prologue
    .line 297
    const/16 v6, 0x320

    move/from16 v0, p1

    move v1, v6

    if-ge v0, v1, :cond_0

    .line 298
    const/4 v8, 0x5

    .line 299
    .local v8, columnCount:I
    const/4 v7, 0x3

    .line 300
    .local v7, rowCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyPanel:Landroid/view/View;

    move-object v6, v0

    const v9, 0x7f0200dc

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    const v6, 0x7f0a0018

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v19

    .line 302
    .local v19, screenHeight:I
    const v6, 0x7f0a0019

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v10

    .line 310
    .local v10, rowHeight:I
    :goto_0
    mul-int v18, v8, v7

    .line 311
    .local v18, screenGridCount:I
    const/4 v13, 0x0

    .local v13, category:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v13, v6, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ScreenView;

    .line 313
    .local v20, screens:Landroid/widget/ScreenView;
    invoke-static {v13}, Lcom/android/mms/util/SmileyParser;->getSmileyCount(I)I

    move-result v6

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    div-int v6, v6, v18

    add-int/lit8 v17, v6, 0x1

    .line 315
    .local v17, screenCount:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    move-object v0, v6

    move v1, v9

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v9, -0x2

    const/16 v11, 0x31

    move-object/from16 v0, v21

    move v1, v6

    move v2, v9

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 320
    .local v21, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x0

    mul-int v9, v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v21

    move v1, v6

    move v2, v9

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 321
    invoke-virtual/range {v20 .. v21}, Landroid/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 322
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ScreenView;->removeAllScreens()V

    .line 324
    const/4 v14, 0x0

    .local v14, screenIndex:I
    :goto_2
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 325
    new-instance v5, Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    move-object v6, v0

    div-int v9, p1, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 329
    .local v5, gridView:Lcom/android/mms/ui/StaticGridView;
    new-instance v11, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/android/mms/ui/AttachmentProcessor$SmileyGridInitializer;-><init>(Lcom/android/mms/ui/AttachmentProcessor;IIII)V

    invoke-virtual {v5, v11}, Lcom/android/mms/ui/StaticGridView;->setInitializer(Lcom/android/mms/ui/StaticGridView$Initializer;)V

    .line 331
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 324
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 304
    .end local v5           #gridView:Lcom/android/mms/ui/StaticGridView;
    .end local v7           #rowCount:I
    .end local v8           #columnCount:I
    .end local v10           #rowHeight:I
    .end local v13           #category:I
    .end local v14           #screenIndex:I
    .end local v17           #screenCount:I
    .end local v18           #screenGridCount:I
    .end local v19           #screenHeight:I
    .end local v20           #screens:Landroid/widget/ScreenView;
    .end local v21           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v8, 0x8

    .line 305
    .restart local v8       #columnCount:I
    const/4 v7, 0x1

    .line 306
    .restart local v7       #rowCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyPanel:Landroid/view/View;

    move-object v6, v0

    const v9, 0x7f0200db

    invoke-virtual {v6, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 307
    const v6, 0x7f0a001a

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v19

    .line 308
    .restart local v19       #screenHeight:I
    const v6, 0x7f0a001b

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AttachmentProcessor;->getDimen(I)I

    move-result v10

    .restart local v10       #rowHeight:I
    goto/16 :goto_0

    .line 333
    .restart local v13       #category:I
    .restart local v14       #screenIndex:I
    .restart local v17       #screenCount:I
    .restart local v18       #screenGridCount:I
    .restart local v20       #screens:Landroid/widget/ScreenView;
    .restart local v21       #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 311
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 335
    .end local v14           #screenIndex:I
    .end local v17           #screenCount:I
    .end local v20           #screens:Landroid/widget/ScreenView;
    .end local v21           #seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private backspace()V
    .locals 5

    .prologue
    const/16 v4, 0x43

    .line 182
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageEditableActivityBase;->getEditMessageFocus()Landroid/widget/EditText;

    move-result-object v2

    .line 184
    .local v2, focus:Landroid/view/View;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 185
    .local v0, eventDown:Landroid/view/KeyEvent;
    invoke-virtual {v2, v4, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 187
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 188
    .local v1, eventUp:Landroid/view/KeyEvent;
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 189
    return-void
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 824
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const-class v3, Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 826
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 827
    return-void
.end method

.method private getDimen(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private loadSmileyGridView(Lcom/android/mms/ui/StaticGridView;IIII)V
    .locals 11
    .parameter "gridView"
    .parameter "category"
    .parameter "screenIndex"
    .parameter "rowCount"
    .parameter "columnCount"

    .prologue
    .line 358
    mul-int v5, p4, p5

    .line 359
    .local v5, screenGridCount:I
    const/4 v2, 0x0

    .local v2, gridIndex:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 360
    mul-int v8, p3, p4

    mul-int v8, v8, p5

    add-int v4, v2, v8

    .line 361
    .local v4, listIndex:I
    invoke-static {p2}, Lcom/android/mms/util/SmileyParser;->getSmileyCount(I)I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 390
    .end local v4           #listIndex:I
    :cond_0
    return-void

    .line 364
    .restart local v4       #listIndex:I
    :cond_1
    invoke-static {p2, v4}, Lcom/android/mms/util/SmileyParser;->getSmileyString(II)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, smileyString:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageEditableActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030053

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 367
    .local v1, grid:Landroid/view/ViewGroup;
    const v8, 0x7f0d00e8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 368
    .local v3, imageGrid:Landroid/widget/ImageView;
    const v8, 0x7f0d00e9

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 369
    .local v7, textGrid:Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/text/util/EmojiSmileys;->getEmojiDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 370
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    :goto_1
    new-instance v8, Lcom/android/mms/ui/AttachmentProcessor$3;

    invoke-direct {v8, p0, v6}, Lcom/android/mms/ui/AttachmentProcessor$3;-><init>(Lcom/android/mms/ui/AttachmentProcessor;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {p1, v1}, Lcom/android/mms/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 376
    const/4 v8, 0x0

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    const v10, 0x3fb33333

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 378
    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private selectSmileyTab(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 193
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSmileyScreens:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 196
    :cond_1
    return-void
.end method

.method private viewAttachment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 721
    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 722
    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 723
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_5

    .line 728
    invoke-virtual {v2, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 729
    const/4 v1, 0x0

    .line 730
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 731
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 737
    :goto_1
    if-eqz v0, :cond_0

    .line 741
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 746
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 750
    :goto_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 732
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 733
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    goto :goto_1

    .line 734
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 735
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    goto :goto_1

    .line 748
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 753
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 755
    :try_start_0
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    .line 756
    invoke-virtual {v0, v1, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 757
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const-class v3, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 764
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    const-string v0, "AttachmentProcessor"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "type"
    .parameter "uri"
    .parameter "append"

    .prologue
    .line 397
    if-eqz p2, :cond_2

    .line 403
    if-eqz p1, :cond_0

    const-string v3, "*/*"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 405
    .local v2, wildcard:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 406
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->IMAGE_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    const-string p1, "image/*"

    .line 419
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 420
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addImage(Landroid/net/Uri;Z)V

    .line 428
    .end local v2           #wildcard:Z
    :cond_2
    :goto_2
    return-void

    .line 403
    :cond_3
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 408
    .restart local v2       #wildcard:Z
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->VIDEO_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 409
    const-string p1, "video/*"

    goto :goto_1

    .line 410
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/AttachmentProcessor;->AUDIO_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 411
    const-string p1, "audio/*"

    goto :goto_1

    .line 412
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, src:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 421
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #src:Ljava/lang/String;
    :cond_7
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 422
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_2

    .line 423
    :cond_8
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "application/ogg"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    goto :goto_2
.end method

.method public arrangeAttachmentPanel(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 231
    iget v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanelPreviousWidth:I

    if-ne v0, p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanelPreviousWidth:I

    .line 234
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeAttachmentTypeScreens(I)V

    .line 235
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->arrangeSmileyScreens(I)V

    goto :goto_0
.end method

.method public gotoAttachmentPanel(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideRightOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 211
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public gotoSmileyPanel(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentProcessor;->isOnAttachmentPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mSlideLeftOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public handleAddAttachmentError(II)V
    .locals 2
    .parameter "error"
    .parameter "mediaTypeStringId"

    .prologue
    .line 646
    if-nez p1, :cond_0

    .line 680
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    new-instance v1, Lcom/android/mms/ui/AttachmentProcessor$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/mms/ui/AttachmentProcessor$4;-><init>(Lcom/android/mms/ui/AttachmentProcessor;II)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public handleAttachentMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 683
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 685
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->editSlideshow()V

    goto :goto_0

    .line 692
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->viewAttachment()V

    goto :goto_0

    .line 696
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 700
    :sswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 704
    :sswitch_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentProcessor;->onAttachmentTypeClick(I)V

    goto :goto_0

    .line 711
    :sswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    goto :goto_0

    .line 683
    :sswitch_data_0
    .sparse-switch
        0x7f0d000c -> :sswitch_1
        0x7f0d000d -> :sswitch_4
        0x7f0d000e -> :sswitch_5
        0x7f0d0042 -> :sswitch_2
        0x7f0d005b -> :sswitch_1
        0x7f0d005c -> :sswitch_5
        0x7f0d00da -> :sswitch_1
        0x7f0d00db -> :sswitch_0
        0x7f0d00dc -> :sswitch_5
        0x7f0d00ee -> :sswitch_1
        0x7f0d00ef -> :sswitch_3
        0x7f0d00f0 -> :sswitch_5
    .end sparse-switch
.end method

.method public isOnAttachmentPanel()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mAttachmentPanel:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 556
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    .line 557
    .local v6, workingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 560
    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 563
    :cond_0
    const/4 v7, -0x1

    if-eq p2, v7, :cond_2

    .line 643
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 584
    :pswitch_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/AttachmentProcessor;->addImage(Landroid/net/Uri;Z)V

    .line 585
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 569
    :pswitch_2
    if-eqz p3, :cond_1

    .line 570
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    .line 571
    if-eqz v6, :cond_4

    .line 572
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 573
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7, v6}, Lcom/android/mms/ui/MessageEditableActivityBase;->setWorkingMessage(Lcom/android/mms/data/WorkingMessage;)V

    .line 574
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getAttachmentView()Lcom/android/mms/ui/AttachmentView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 575
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawTopPanel()V

    .line 576
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 577
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 579
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 590
    :pswitch_3
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/AttachmentProcessor;->addVideo(Landroid/net/Uri;Z)V

    .line 591
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 595
    :pswitch_4
    const-string v7, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 596
    .local v5, uri:Landroid/net/Uri;
    sget-object v7, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 597
    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    .line 599
    :cond_6
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto :goto_0

    .line 604
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/AttachmentProcessor;->addAudio(Landroid/net/Uri;Z)V

    .line 605
    :cond_7
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 609
    :pswitch_6
    if-eqz p3, :cond_1

    .line 611
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 612
    .local v3, text:Landroid/text/Editable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v1, formatRecipient:Ljava/lang/StringBuilder;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 615
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_8

    .line 619
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .end local v2           #str:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-static {v7}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/android/mms/model/ContactParser;->getContactFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 627
    .local v0, cusorPos:I
    invoke-interface {v3, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 628
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 633
    .end local v0           #cusorPos:I
    .end local v1           #formatRecipient:Ljava/lang/StringBuilder;
    .end local v3           #text:Landroid/text/Editable;
    :pswitch_7
    if-eqz p3, :cond_1

    .line 634
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->getTextEditor()Landroid/widget/EditText;

    move-result-object v4

    .line 635
    .local v4, textEditor:Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v8

    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 637
    iget-object v7, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageEditableActivityBase;->requestShowSoftKeyboard()V

    goto/16 :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onAttachmentTypeClick(I)V
    .locals 9
    .parameter

    .prologue
    const/16 v4, 0x400

    const-wide/16 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string v3, "android.intent.action.PICK"

    .line 431
    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 437
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 553
    :goto_1
    return-void

    .line 439
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/AttachmentProcessor;->gotoSmileyPanel(Z)V

    goto :goto_1

    .line 443
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    const-string v1, "vnd.android.cursor.dir/contact_pick_single"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x6d

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->insertChenghu()V

    goto :goto_1

    .line 454
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_1

    .line 458
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 464
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    const-string v1, "vnd.android.cursor.dir/smsphrase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x70

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 471
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_1

    .line 476
    :pswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    sub-int/2addr v2, v4

    int-to-long v2, v2

    .line 477
    if-eqz v0, :cond_5

    .line 478
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 484
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 486
    :goto_2
    cmp-long v2, v0, v7

    if-lez v2, :cond_0

    .line 487
    invoke-static {v6}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->duration:I

    .line 488
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 491
    const-string v0, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x67

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v2, 0x7f090040

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 503
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const-class v2, Lcom/android/mms/ui/FestivalSmsCategoryList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v2, 0x6f

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 510
    :pswitch_9
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectAudio(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 515
    :pswitch_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    sub-int/2addr v2, v4

    int-to-long v2, v2

    .line 516
    if-eqz v0, :cond_4

    .line 517
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 518
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 520
    :goto_3
    cmp-long v2, v0, v7

    if-lez v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const/16 v3, 0x69

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;IJ)V

    goto/16 :goto_1

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 530
    :pswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentProcessor;->editSlideshow()V

    goto/16 :goto_1

    .line 534
    :pswitch_c
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getTimeToSend()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->setTiming()V

    goto/16 :goto_1

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->cancelTiming()V

    goto/16 :goto_1

    .line 542
    :pswitch_d
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 549
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentProcessor;->mActivity:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto/16 :goto_2

    :cond_6
    move v1, v6

    goto/16 :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_c
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method
