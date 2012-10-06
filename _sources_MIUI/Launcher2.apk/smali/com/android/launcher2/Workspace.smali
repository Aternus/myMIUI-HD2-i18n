.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/DragableScreenView;
.source "Workspace.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mDefaultScreenId:J

.field private mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mEditingNewScreenLeft:Lcom/android/launcher2/CellScreen;

.field private mEditingNewScreenRight:Lcom/android/launcher2/CellScreen;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mInDraggingMode:Z

.field private mInEditingMode:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastShakeTime:J

.field private mLastShakeX:F

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mNewScreenId:J

.field private mOldTransitionType:I

.field private mOnEditModeAnimationComplate:Ljava/lang/Runnable;

.field private mPositionMapping:[I

.field private mPreviousScreen:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenIdMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShakeCounter:I

.field private mShowEditingIndicator:Z

.field private mSkipDrawingChild:Z

.field private mSlideBarEditingEnter:Landroid/view/animation/Animation;

.field private mSlideBarEditingExit:Landroid/view/animation/Animation;

.field private mTempCell:[I

.field private mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

.field private mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/Workspace;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput v5, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    .line 116
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 121
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mSkipDrawingChild:Z

    .line 122
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    .line 123
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mShowEditingIndicator:Z

    .line 124
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mInDraggingMode:Z

    .line 134
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mNewScreenId:J

    .line 968
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    .line 969
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    .line 1206
    new-instance v3, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mOnEditModeAnimationComplate:Ljava/lang/Runnable;

    .line 1326
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 1380
    new-instance v3, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    .line 1683
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    .line 1684
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/Workspace;->mLastShakeX:F

    .line 1685
    iput v5, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    .line 158
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 159
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 161
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v3, 0x7f0a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, indicator:Ljava/lang/String;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v3, "bottom_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 167
    const v3, 0x7f02008d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setSeekPointResource(I)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 169
    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mShowEditingIndicator:Z

    .line 182
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAnimationCacheEnabled(Z)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setClipChildren(Z)V

    .line 184
    return-void

    .line 170
    :cond_1
    const-string v3, "top_point"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    const/16 v3, 0x31

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 175
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mShowEditingIndicator:Z

    goto :goto_0

    .line 176
    :cond_2
    const-string v3, "slider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 180
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mShowEditingIndicator:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/ThumbnailViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Landroid/util/LongSparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->delayedShowPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/launcher2/Workspace;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    return-object v0
.end method

.method private buildChildCache(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 1395
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1396
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 1397
    .local v0, cs:Lcom/android/launcher2/CellScreen;
    instance-of v2, v0, Lcom/android/launcher2/CellScreen;

    if-eqz v2, :cond_0

    .line 1398
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellScreen;->setDrawingCacheEnabled(Z)V

    .line 1399
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellScreen;->setEnableDrawingCacheHolding(Z)V

    .line 1395
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1399
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1402
    .end local v0           #cs:Lcom/android/launcher2/CellScreen;
    :cond_2
    if-eqz p1, :cond_3

    .line 1403
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->delayedBuildChildCache()V

    .line 1405
    :cond_3
    return-void
.end method

.method private clearDragStatus()V
    .locals 4

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 709
    .local v0, cs:Lcom/android/launcher2/CellScreen;
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->clearDragStatus()V

    .line 707
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 711
    .end local v0           #cs:Lcom/android/launcher2/CellScreen;
    :cond_0
    return-void
.end method

.method private delayedBuildChildCache()V
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1391
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1392
    return-void
.end method

.method private delayedShowPreview(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    if-eqz p1, :cond_3

    .line 1186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    .line 1187
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/ThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1188
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1189
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    .line 1196
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/WorkspaceThumbnailView;->show(Z)V

    goto :goto_0

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    if-eqz v0, :cond_2

    .line 1193
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    goto :goto_1
.end method

.method private getDefaultScreenIndex()I
    .locals 4

    .prologue
    .line 954
    iget-wide v1, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 955
    .local v0, defaultScreen:I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private onDropExternal(IIIILcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Landroid/view/View;)Z
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "source"

    .prologue
    .line 715
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->onWorkspaceDropExternalComplate()V

    .line 718
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v3, v0

    packed-switch v3, :pswitch_data_0

    .line 749
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 722
    :pswitch_1
    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    move-wide v3, v0

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 723
    const/4 v3, 0x1

    .line 766
    .end local p5
    :goto_0
    return v3

    .line 725
    .restart local p5
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v3

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v10

    .line 752
    .local v10, view:Landroid/view/View;
    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p6

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/CellLayout;->insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 753
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f0a0029

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 754
    const/4 v3, 0x0

    goto :goto_0

    .line 728
    .end local v10           #view:Landroid/view/View;
    :pswitch_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v3

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->createItemIcon(Landroid/view/ViewGroup;Lcom/android/launcher2/ItemInfo;)Lcom/android/launcher2/ItemIcon;

    move-result-object v10

    .line 729
    .restart local v10       #view:Landroid/view/View;
    goto :goto_1

    .line 731
    .end local v10           #view:Landroid/view/View;
    :pswitch_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast p5, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    .end local p5
    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->addAppWidget(Lcom/android/launcher2/LauncherAppWidgetProviderInfo;)V

    .line 732
    const/4 v3, 0x1

    goto :goto_0

    .line 735
    .restart local p5
    :pswitch_4
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast p5, Lcom/android/launcher2/gadget/GadgetInfo;

    .end local p5
    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->addGadget(Lcom/android/launcher2/gadget/GadgetInfo;)V

    .line 736
    const/4 v3, 0x1

    goto :goto_0

    .line 739
    .restart local p5
    :pswitch_5
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p6

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/CellLayout;->reserveNearestVacantArea(IIIIIILcom/android/launcher2/ItemInfo;)[I

    move-result-object v3

    if-nez v3, :cond_1

    .line 740
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f0a0029

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 741
    const/4 v3, 0x0

    goto :goto_0

    .line 743
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v12, intent:Landroid/content/Intent;
    check-cast p5, Lcom/android/launcher2/ShortcutProviderInfo;

    .end local p5
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/ShortcutProviderInfo;->mComponentName:Landroid/content/ComponentName;

    move-object v3, v0

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 745
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v12}, Lcom/android/launcher2/Launcher;->processShortcut(Landroid/content/Intent;)V

    .line 746
    const/4 v3, 0x1

    goto :goto_0

    .line 755
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v10       #view:Landroid/view/View;
    .restart local p5
    :cond_2
    move-object/from16 v0, p5

    instance-of v0, v0, Lcom/android/launcher2/UserFolderInfo;

    move v3, v0

    if-eqz v3, :cond_3

    .line 756
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast p5, Lcom/android/launcher2/UserFolderInfo;

    .end local p5
    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->addEmptyFolder(Lcom/android/launcher2/UserFolderInfo;)V

    .line 759
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;I)V

    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    .line 761
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 762
    instance-of v3, v10, Lcom/android/launcher2/DropTarget;

    if-eqz v3, :cond_4

    .line 763
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v10, Lcom/android/launcher2/DropTarget;

    .end local v10           #view:Landroid/view/View;
    invoke-virtual {v3, v10}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 766
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private registAccelerometer()V
    .locals 3

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1670
    if-eqz v0, :cond_0

    .line 1671
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 1672
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1674
    :cond_0
    return-void
.end method

.method private setupEditingScreen(ZZ)V
    .locals 3
    .parameter "isEditing"
    .parameter "quickMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1229
    if-eqz p1, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenLeft:Lcom/android/launcher2/CellScreen;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 1231
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenRight:Lcom/android/launcher2/CellScreen;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 1232
    if-nez p2, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->removeScreen(I)V

    .line 1237
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->removeScreen(I)V

    goto :goto_0
.end method

.method private unRegistAccelerometer()V
    .locals 2

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1678
    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1681
    :cond_0
    return-void
.end method

.method private updateWallpaperOffset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsetDuringSwitchingPreview()V

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    :goto_1
    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateWallpaperOffset(I)V
    .locals 7
    .parameter "scrollRange"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 401
    .local v2, token:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v1, v5

    .line 403
    .local v1, steps:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v0, v5

    .line 405
    .local v0, offsetX:F
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1, v5, v0, v5}, Lcom/android/launcher2/Launcher;->updateWallpaperOffset(FFFF)V

    .line 407
    .end local v0           #offsetX:F
    .end local v1           #steps:F
    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v3, v6, v3

    move v1, v3

    goto :goto_0

    .line 403
    .restart local v1       #steps:F
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v4

    :goto_2
    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v0, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 516
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 517
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-nez v0, :cond_2

    .line 518
    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 519
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 520
    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 521
    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 524
    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 525
    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 9
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 287
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 288
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIII)V
    .locals 9
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 302
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIZ)V

    .line 303
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIZ)V
    .locals 6
    .parameter "child"
    .parameter "screenId"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    const/4 v5, 0x0

    .line 318
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v3

    .line 319
    .local v3, screen:I
    if-gez v3, :cond_0

    .line 320
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->loadScreens(Z)V

    .line 321
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v3

    .line 322
    if-gez v3, :cond_0

    .line 323
    const-string v4, "Launcher.Workspace"

    const-string v5, "The screen must be >= 0; skipping child"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local p1
    :goto_0
    return-void

    .line 328
    .restart local p1
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 329
    .local v1, group:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 330
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 331
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher2/Launcher;->closeFolder(Lcom/android/launcher2/Folder;Z)Z

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 334
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v2, :cond_4

    .line 335
    new-instance v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v2           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-direct {v2, p4, p5, p6, p7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 342
    .restart local v2       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    if-eqz p8, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v1, p1, v4, v2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 344
    instance-of v4, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_2

    .line 345
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v4, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 348
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v4}, Lcom/android/launcher2/WorkspaceThumbnailView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    new-instance v4, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 357
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    goto :goto_0

    .line 337
    .restart local p1
    :cond_4
    iput p4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 338
    iput p5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 339
    iput p6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 340
    iput p7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 342
    :cond_5
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0}, Lcom/android/launcher2/DragableScreenView;->computeScroll()V

    .line 412
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset()V

    .line 413
    return-void
.end method

.method deleteScreen(J)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 1286
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    :goto_0
    if-ne v0, v2, :cond_1

    .line 1308
    :goto_1
    return-void

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    goto :goto_0

    .line 1289
    :cond_1
    iget-wide v0, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 1290
    iput-wide v3, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    .line 1291
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1292
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1293
    const-string v1, "pref_default_screen"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1296
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v0, :cond_5

    .line 1297
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v0

    .line 1298
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1299
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 1306
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1307
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    goto :goto_1

    .line 1299
    :cond_4
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 1302
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 1303
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, -0x1

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getDrawingTime()J

    move-result-wide v2

    .line 423
    .local v2, drawingTime:J
    iget-boolean v10, p0, Lcom/android/launcher2/Workspace;->mSkipDrawingChild:Z

    if-nez v10, :cond_1

    .line 424
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 459
    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v9

    .line 428
    .local v9, touchState:I
    iget v10, p0, Lcom/android/launcher2/DragableScreenView;->mNextScreen:I

    if-ne v10, v12, :cond_5

    if-eqz v9, :cond_2

    const/4 v10, 0x6

    if-eq v9, v10, :cond_2

    const/4 v10, 0x7

    if-ne v9, v10, :cond_5

    :cond_2
    const/4 v10, 0x1

    move v4, v10

    .line 433
    .local v4, fastDraw:Z
    :goto_0
    if-eqz v4, :cond_6

    .line 434
    iget v10, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 452
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 453
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_0

    .line 454
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 456
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 453
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 428
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v4           #fastDraw:Z
    .end local v5           #i:I
    :cond_5
    const/4 v10, 0x0

    move v4, v10

    goto :goto_0

    .line 436
    .restart local v4       #fastDraw:Z
    :cond_6
    iget v10, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 437
    .local v8, scrollPos:F
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_8

    move v6, v12

    .line 438
    .local v6, leftScreen:I
    :goto_3
    add-int/lit8 v7, v6, 0x1

    .line 439
    .local v7, rightScreen:I
    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 440
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_7

    .line 441
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 444
    :cond_7
    int-to-float v10, v6

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_3

    if-ltz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 445
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_3

    .line 446
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1, v10, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 437
    .end local v6           #leftScreen:I
    .end local v7           #rightScreen:I
    :cond_8
    float-to-int v10, v8

    move v6, v10

    goto :goto_3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 540
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 597
    iget v3, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 598
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 600
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 601
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->focusableViewAvailable(Landroid/view/View;)V

    .line 611
    :cond_0
    return-void

    .line 604
    :cond_1
    if-eq v2, p0, :cond_0

    .line 607
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 608
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getCellLayout(I)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v0

    .line 1009
    .local v0, cs:Lcom/android/launcher2/CellScreen;
    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 1012
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellScreen(I)Lcom/android/launcher2/CellScreen;
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    .line 1001
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/CellScreen;

    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellScreen;

    move-object v1, p0

    .line 1004
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x3f6147ae

    const/4 v5, 0x0

    .line 1331
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1333
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1334
    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 1335
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 1336
    cmpl-float v3, p3, v5

    if-lez v3, :cond_0

    .line 1337
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v1, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1339
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    const/high16 v4, 0x4120

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1340
    cmpl-float v3, p3, v5

    if-lez v3, :cond_1

    .line 1341
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    neg-float v1, v1

    invoke-virtual {v3, v1, v5, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1344
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 1345
    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1346
    const/high16 v1, 0x4282

    mul-float/2addr v1, p3

    const/high16 v3, 0x4200

    add-float/2addr v1, v3

    const/high16 v3, 0x41e0

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1348
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v6, v6, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1349
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCellScreen()Lcom/android/launcher2/CellScreen;
    .locals 0

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellScreen;

    return-object p0
.end method

.method getCurrentOpenedFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    return-object v0
.end method

.method getCurrentScreenId()J
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 830
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v8

    .line 831
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 832
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    .line 833
    .local v3, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v2

    .line 834
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 835
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 836
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 837
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_0

    .line 838
    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/Folder;

    move-object v4, v0

    .line 839
    .local v4, f:Lcom/android/launcher2/Folder;
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 845
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v4           #f:Lcom/android/launcher2/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 834
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/android/launcher2/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 831
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 845
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/android/launcher2/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v4

    .line 195
    .local v4, screens:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/Folder;>;"
    const/4 v3, 0x0

    .local v3, screen:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 199
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 201
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v0           #cell:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-object v2
.end method

.method getScreenIdByIndex(I)J
    .locals 3
    .parameter "index"

    .prologue
    const-wide/16 v1, -0x1

    .line 986
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-wide v0, v1

    .line 995
    .end local p0
    :goto_0
    return-wide v0

    .line 990
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 992
    .restart local p0
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    move-wide v0, v1

    .line 993
    goto :goto_0

    .line 995
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method getScreenIndexById(J)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, -0x1

    .line 981
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 982
    .local v0, index:I
    if-ne v0, v3, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method insertNewScreen(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1312
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    const-string v1, "screenOrder"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1314
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1316
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1317
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1319
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/Workspace;->mNewScreenId:J

    .line 1320
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1323
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    .line 1324
    return-void

    :cond_0
    move v2, v3

    .line 1317
    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1
.end method

.method isDefaultScreenShowing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 213
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method isScrolling()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadScreens(Z)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1024
    const-wide/16 v0, 0x0

    .line 1026
    if-nez p1, :cond_1

    .line 1027
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens before reload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v0

    .line 1029
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 1030
    iget-wide v0, p0, Lcom/android/launcher2/Workspace;->mNewScreenId:J

    .line 1031
    iput-wide v4, p0, Lcom/android/launcher2/Workspace;->mNewScreenId:J

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1034
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    move-wide v6, v0

    .line 1039
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "screenOrder ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1046
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1047
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1048
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1049
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1052
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1053
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 1052
    :cond_3
    if-eqz v0, :cond_4

    .line 1053
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1056
    :cond_4
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screens loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, v9

    move v2, v0

    .line 1062
    :goto_1
    if-ltz v2, :cond_5

    .line 1063
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellScreen;

    .line 1064
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->clearAnimation()V

    .line 1065
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1069
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/android/launcher2/Workspace;->removeScreensInLayout(II)V

    .line 1072
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v2, v0

    :goto_2
    if-ltz v2, :cond_7

    .line 1073
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1074
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellScreen;

    .line 1075
    if-nez v0, :cond_6

    .line 1076
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030006

    invoke-virtual {v0, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellScreen;

    .line 1077
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher2/CellLayout;->setScreenId(J)V

    .line 1078
    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1080
    :cond_6
    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;I)V

    .line 1072
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 1083
    :cond_7
    if-eqz p1, :cond_9

    .line 1084
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1085
    const-string v1, "pref_default_screen"

    const-wide/16 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/Workspace;->mDefaultScreenId:J

    .line 1086
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 1098
    :cond_8
    :goto_3
    return-void

    .line 1090
    :cond_9
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v0, :cond_a

    .line 1091
    invoke-virtual {p0, v9, v9}, Lcom/android/launcher2/Workspace;->setEditMode(ZZ)V

    .line 1092
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOnEditModeAnimationComplate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1094
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIdMap:Landroid/util/LongSparseArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v10, :cond_8

    .line 1095
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/Workspace;->setCurrentScreenById(J)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getDefaultScreenIndex()I

    move-result v0

    .line 960
    .local v0, defaultScreenIndex:I
    if-eqz p1, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToScreen(I)V

    .line 965
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 966
    return-void

    .line 963
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1726
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Lcom/android/launcher2/DragableScreenView;->onAttachedToWindow()V

    .line 464
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 465
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInDraggingMode:Z

    .line 689
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInDraggingMode:Z

    if-eqz v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->clearDragStatus()V

    .line 702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInDraggingMode:Z

    .line 704
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/launcher2/DragableScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellScreen;->onDragOver(IIIILcom/android/launcher2/ItemInfo;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v1

    .line 653
    .local v1, cellScreen:Lcom/android/launcher2/CellScreen;
    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->isEditingNewScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->insertNewScreen(I)V

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v1

    .line 657
    :cond_0
    if-eq p1, p0, :cond_1

    .line 658
    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v8, v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->onDropExternal(IIIILcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Landroid/view/View;)Z

    .end local v1           #cellScreen:Lcom/android/launcher2/CellScreen;
    move-result v2

    .line 683
    :goto_0
    return v2

    .line 661
    .restart local v1       #cellScreen:Lcom/android/launcher2/CellScreen;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_3

    .line 662
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v8, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 664
    .local v8, cell:Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v7, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/ItemInfo;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/CellScreen;->insertToNearestVacantArea(IIIIIILandroid/view/View;Lcom/android/launcher2/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 668
    const/4 v2, 0x0

    goto :goto_0

    .line 671
    :cond_2
    iget v2, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 672
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v10

    .line 673
    .local v10, originalCellScreen:Lcom/android/launcher2/CellScreen;
    invoke-virtual {v10}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 674
    invoke-virtual {v10}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    .line 675
    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->getCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 676
    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    .line 677
    instance-of v2, v8, Lcom/android/launcher2/gadget/Gadget;

    if-eqz v2, :cond_3

    .line 678
    check-cast v8, Lcom/android/launcher2/gadget/Gadget;

    .end local v8           #cell:Landroid/view/View;
    invoke-interface {v8}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 683
    .end local v10           #originalCellScreen:Lcom/android/launcher2/CellScreen;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 6
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 792
    if-eqz p2, :cond_1

    .line 793
    if-eq p1, p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 795
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellScreen()Lcom/android/launcher2/CellScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellScreen;->updateLayout()V

    .line 797
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 798
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 811
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 812
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 813
    return-void

    .line 802
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_2

    .line 803
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 804
    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropAborted(Landroid/view/View;)V

    .line 807
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_2
    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-wide v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f0a0029

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showError(I)V

    goto :goto_0
.end method

.method onEditModeEnterComplate()V
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOnEditModeAnimationComplate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1221
    return-void
.end method

.method onEditModeExitComplate()V
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOnEditModeAnimationComplate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1225
    iget v0, p0, Lcom/android/launcher2/Workspace;->mOldTransitionType:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    .line 1226
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const v3, 0x7f030006

    const/4 v2, 0x0

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    .line 472
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->loadScreens(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellScreen;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenLeft:Lcom/android/launcher2/CellScreen;

    .line 475
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenLeft:Lcom/android/launcher2/CellScreen;

    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->setEditingNewScreenMode()V

    .line 476
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellScreen;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenRight:Lcom/android/launcher2/CellScreen;

    .line 477
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mEditingNewScreenRight:Lcom/android/launcher2/CellScreen;

    invoke-virtual {v0}, Lcom/android/launcher2/CellScreen;->setEditingNewScreenMode()V

    .line 478
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 577
    :goto_0
    return v0

    .line 554
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 556
    .local v7, action:I
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_0

    .line 577
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 559
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getTouchState()I

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    .line 561
    .local v8, currentScreen:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    aget v3, v3, v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto :goto_1

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 482
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v1, :cond_0

    .line 483
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 484
    .local v0, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateWallpaperOffset(I)V

    .line 486
    .end local v0           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/DragableScreenView;->onMeasure(II)V

    .line 487
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isInEditing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->finishCurrentGesture()V

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 585
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 586
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 511
    :goto_0
    return v2

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentOpenedFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 500
    .local v1, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_0

    .line 504
    :cond_1
    iget v2, p0, Lcom/android/launcher2/DragableScreenView;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 505
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mNextScreen:I

    .line 509
    .local v0, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move v2, v4

    .line 511
    goto :goto_0

    .line 507
    .end local v0           #focusableScreen:I
    :cond_2
    iget v0, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x258

    const/4 v2, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    .line 1691
    sget-boolean v0, Lcom/android/launcher2/Workspace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1692
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 1693
    iget v1, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    if-ne v1, v7, :cond_1

    .line 1694
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLastShakeX:F

    .line 1695
    iput v2, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1722
    :goto_0
    return-void

    .line 1698
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1699
    iget-wide v3, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    sub-long v3, v1, v3

    .line 1700
    iget v5, p0, Lcom/android/launcher2/Workspace;->mLastShakeX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40a0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 1701
    iget-wide v5, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_3

    .line 1702
    iget v3, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1703
    iput-wide v1, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    .line 1721
    :cond_2
    :goto_1
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLastShakeX:F

    goto :goto_0

    .line 1704
    :cond_3
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    cmp-long v5, v3, v10

    if-gez v5, :cond_4

    .line 1706
    iget v3, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1707
    iput-wide v1, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    .line 1708
    iget v1, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1709
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->alignIconsToTop()V

    .line 1710
    iput v7, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1711
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1713
    :cond_4
    const-wide/16 v1, 0x384

    cmp-long v1, v3, v1

    if-lez v1, :cond_2

    .line 1714
    iput v7, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1715
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    goto :goto_1

    .line 1717
    :cond_5
    cmp-long v1, v3, v10

    if-lez v1, :cond_2

    .line 1718
    iput v7, p0, Lcom/android/launcher2/Workspace;->mShakeCounter:I

    .line 1719
    iput-wide v8, p0, Lcom/android/launcher2/Workspace;->mLastShakeTime:J

    goto :goto_1
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1353
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1354
    sget-boolean v1, Landroid/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    if-nez v1, :cond_0

    const-string v1, "pref_key_enable_drawing_cache"

    sget-boolean v2, Landroid/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    if-nez v2, :cond_1

    move v2, v4

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->buildChildCache(Z)V

    .line 1357
    const-string v1, "pref_key_transformation_classic_no_overshoot"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v4

    .line 1373
    :goto_2
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-eqz v1, :cond_9

    .line 1374
    iput v0, p0, Lcom/android/launcher2/Workspace;->mOldTransitionType:I

    .line 1378
    :goto_3
    return-void

    :cond_1
    move v2, v3

    .line 1354
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 1359
    :cond_3
    const-string v1, "pref_key_transformation_corss_fade"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1360
    const/4 v0, 0x2

    goto :goto_2

    .line 1361
    :cond_4
    const-string v1, "pref_key_transformation_fall_down"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1362
    const/4 v0, 0x3

    goto :goto_2

    .line 1363
    :cond_5
    const-string v1, "pref_key_transformation_cube"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1364
    const/4 v0, 0x4

    goto :goto_2

    .line 1365
    :cond_6
    const-string v1, "pref_key_transformation_left_page"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1366
    const/4 v0, 0x5

    goto :goto_2

    .line 1367
    :cond_7
    const-string v1, "pref_key_transformation_stack"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1368
    const/4 v0, 0x7

    goto :goto_2

    .line 1369
    :cond_8
    const-string v1, "pref_key_transformation_rotate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1370
    const/16 v0, 0x8

    goto :goto_2

    .line 1376
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    goto :goto_3

    :cond_a
    move v0, v3

    goto :goto_2
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedBuildChildCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1201
    sget-boolean v0, Landroid/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    if-nez v0, :cond_0

    .line 1202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->buildChildCache(Z)V

    .line 1204
    :cond_0
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v6

    .line 865
    .local v6, count:I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 866
    .local v4, manager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 868
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 869
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getCellLayout(I)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    .line 872
    .local v2, layout:Lcom/android/launcher2/CellLayout;
    new-instance v0, Lcom/android/launcher2/Workspace$2;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 868
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 951
    .end local v2           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method reorderScreens()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, "Launcher.Workspace"

    .line 1101
    const-string v0, "Launcher.Workspace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screens before reorder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1104
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    if-nez v1, :cond_0

    .line 1105
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    move v1, v5

    .line 1106
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1107
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    aput v1, v2, v1

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v5

    .line 1112
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1113
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    :cond_1
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mPositionMapping:[I

    .line 1117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1119
    const-string v2, "screenOrder"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1120
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1121
    const-string v0, "Launcher.Workspace"

    const-string v0, "Failed to update screens table for reorder, aborting"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :goto_2
    return-void

    .line 1125
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->loadScreens(Z)V

    .line 1127
    const-string v0, "Launcher.Workspace"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screens after reorder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setCurrentScreenById(J)V
    .locals 2
    .parameter "screenId"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->getScreenIndexById(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentScreen(I)V

    .line 255
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 12
    .parameter "screenIndex"

    .prologue
    const/4 v11, 0x1

    .line 222
    iget v9, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    if-eq p1, v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v9, :cond_4

    .line 223
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->closeAnyFolder()Z

    .line 224
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 227
    iget v9, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v10

    if-ge v9, v10, :cond_1

    iget v9, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v9

    move-wide v1, v9

    .line 228
    .local v1, currentId:J
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v7

    .line 230
    .local v7, nextId:J
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v4, v9, Lcom/android/launcher2/Launcher;->mGadgets:Ljava/util/ArrayList;

    .line 231
    .local v4, gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v5, v9, v11

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_2

    .line 232
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/gadget/Gadget;

    .line 233
    .local v3, gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 234
    .local v6, info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v9, v6, Lcom/android/launcher2/ItemInfo;->screenId:J

    cmp-long v9, v9, v1

    if-nez v9, :cond_0

    .line 235
    invoke-interface {v3}, Lcom/android/launcher2/gadget/Gadget;->onPause()V

    .line 231
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 227
    .end local v1           #currentId:J
    .end local v3           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v4           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .end local v5           #i:I
    .end local v6           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v7           #nextId:J
    :cond_1
    const-wide/16 v9, -0x1

    move-wide v1, v9

    goto :goto_0

    .line 238
    .restart local v1       #currentId:J
    .restart local v4       #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .restart local v5       #i:I
    .restart local v7       #nextId:J
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v5, v9, v11

    :goto_2
    if-ltz v5, :cond_4

    .line 239
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/gadget/Gadget;

    .line 240
    .restart local v3       #gadget:Lcom/android/launcher2/gadget/Gadget;
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 241
    .restart local v6       #info:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v9, v6, Lcom/android/launcher2/ItemInfo;->screenId:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_3

    .line 242
    invoke-interface {v3}, Lcom/android/launcher2/gadget/Gadget;->onResume()V

    .line 238
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 247
    .end local v1           #currentId:J
    .end local v3           #gadget:Lcom/android/launcher2/gadget/Gadget;
    .end local v4           #gadgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/Gadget;>;"
    .end local v5           #i:I
    .end local v6           #info:Lcom/android/launcher2/gadget/GadgetInfo;
    .end local v7           #nextId:J
    :cond_4
    iget-boolean v9, p0, Lcom/android/launcher2/Workspace;->mInDraggingMode:Z

    if-eqz v9, :cond_5

    .line 248
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->clearDragStatus()V

    .line 250
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher2/DragableScreenView;->setCurrentScreenInner(I)V

    .line 251
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 789
    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1243
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 1283
    :cond_0
    return-void

    .line 1247
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mInEditingMode:Z

    .line 1248
    if-nez p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSkipDrawingChild:Z

    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Workspace;->setupEditingScreen(ZZ)V

    .line 1251
    if-nez p2, :cond_3

    .line 1252
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mShowEditingIndicator:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 1253
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSlideBarEditingEnter:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setDrawingCacheByFilterBitmap(Z)V

    .line 1266
    if-eqz p1, :cond_c

    .line 1267
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenTransitionType()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOldTransitionType:I

    .line 1268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setOvershootTension(F)V

    .line 1269
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenSnapDuration(I)V

    .line 1270
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScreenTransitionType(I)V

    .line 1271
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->registAccelerometer()V

    :cond_3
    :goto_3
    move v0, v2

    .line 1277
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getCellScreen(I)Lcom/android/launcher2/CellScreen;

    move-result-object v1

    .line 1279
    if-eqz v1, :cond_4

    .line 1280
    if-eqz p2, :cond_d

    const/high16 v2, -0x8000

    :goto_5
    invoke-virtual {v1, p1, v2}, Lcom/android/launcher2/CellScreen;->setEditMode(ZI)V

    .line 1277
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v2

    .line 1248
    goto :goto_0

    .line 1253
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSlideBarEditingExit:Landroid/view/animation/Animation;

    goto :goto_1

    .line 1255
    :cond_7
    if-eqz p1, :cond_9

    const/4 v0, 0x4

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setIndicatorBarVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSlideBar:Landroid/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_8

    .line 1257
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSlideBar:Landroid/widget/ScreenView$SlideBar;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/ScreenView$SlideBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1260
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFadeOut:Landroid/view/animation/Animation;

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 1255
    goto :goto_6

    .line 1257
    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_7

    .line 1260
    :cond_b
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFadeIn:Landroid/view/animation/Animation;

    goto :goto_8

    .line 1273
    :cond_c
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->unRegistAccelerometer()V

    goto :goto_3

    .line 1280
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_5
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 785
    return-void
.end method

.method setThumbnailView(Lcom/android/launcher2/WorkspaceThumbnailView;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 1161
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1163
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    .line 1164
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/WorkspaceThumbnailView;->setThumbnailMeasureSpec(II)V

    .line 1167
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    .line 1168
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mThumbnailViewAdapter:Lcom/android/launcher2/ThumbnailViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setAdapter(Lcom/android/launcher2/ThumbnailViewAdapter;)V

    .line 1169
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mThumbnailView:Lcom/android/launcher2/WorkspaceThumbnailView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceThumbnailView;->setAnimationDuration(I)V

    .line 1170
    return-void
.end method

.method public showPreview(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1173
    new-instance v0, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1179
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 4
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 618
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 620
    iput p1, p0, Lcom/android/launcher2/DragableScreenView;->mNextScreen:I

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 623
    .local v0, focusedChild:Landroid/view/View;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 628
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/DragableScreenView;->snapToScreen(IIZ)V

    .line 629
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 5
    .parameter "cellInfo"

    .prologue
    .line 632
    iget-object v0, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 635
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    :goto_0
    return-void

    .line 639
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 641
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentCellLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 642
    .local v1, current:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    .line 643
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 644
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getTouchTranslator()Lcom/android/launcher2/DragController$TouchTranslator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DragController;->setTouchTranslator(Lcom/android/launcher2/DragController$TouchTranslator;)V

    .line 645
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    sget v4, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    invoke-virtual {v3, v0, p0, v2, v4}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V

    .line 646
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto :goto_0
.end method

.method public updateWallpaperOffsetDuringSwitchingPreview()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 365
    .local v3, token:Landroid/os/IBinder;
    iget v5, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 366
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    long-to-float v6, v6

    div-float v1, v5, v6

    .line 375
    .local v1, percentage:F
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    if-ne v5, v11, :cond_1

    move v4, v9

    .line 381
    .local v4, xStep:F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    if-ne v5, v11, :cond_2

    move v2, v9

    .line 383
    .local v2, scrollX:F
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v5, v4, v9, v6, v9}, Lcom/android/launcher2/Launcher;->updateWallpaperOffset(FFFF)V

    .line 385
    .end local v1           #percentage:F
    .end local v2           #scrollX:F
    .end local v4           #xStep:F
    :cond_0
    return-void

    .line 378
    .restart local v1       #percentage:F
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    sub-int/2addr v5, v11

    int-to-float v5, v5

    div-float v5, v10, v5

    move v4, v5

    goto :goto_0

    .line 381
    .restart local v4       #xStep:F
    :cond_2
    iget v5, p0, Lcom/android/launcher2/Workspace;->mPreviousScreen:I

    int-to-float v5, v5

    sub-float v6, v10, v1

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/DragableScreenView;->mCurrentScreen:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    move v2, v5

    goto :goto_1
.end method
