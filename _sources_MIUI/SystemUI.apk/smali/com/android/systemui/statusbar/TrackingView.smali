.class public Lcom/android/systemui/statusbar/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"

# interfaces
.implements Landroid/util/ToggleManager$OnToggleChangedListener;
.implements Landroid/util/ToggleManager$OnToggleOrderChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mTabs:[Landroid/view/View;

.field mToggleBar:Landroid/widget/ScreenView;

.field public mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWidth:I

.field private mToggles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarService;

    .end local p1
    iput-object p1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/TrackingView;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/TrackingView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/TrackingView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->bindToggles()V

    return-void
.end method

.method private addToggleToBar(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .local v0, toggle:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 196
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v1, v0}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 200
    if-ltz p1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/TrackingView;->OnToggleChanged(I)V

    .line 205
    return-void
.end method

.method private adjustBlankToggles()V
    .locals 8

    .prologue
    .line 209
    iget v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    if-nez v5, :cond_0

    .line 211
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080621

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    .line 216
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 217
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v3, padding:Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 219
    iget v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleWidth:I

    .line 225
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #padding:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v5}, Landroid/widget/ScreenView;->getVisibleRange()I

    move-result v4

    .line 226
    .local v4, toggleCountInOneScreenWidth:I
    if-lez v4, :cond_3

    .line 227
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int v2, v5, v4

    .line 228
    .local v2, extraToggleCount:I
    if-nez v2, :cond_1

    const/4 v5, 0x0

    move v0, v5

    .line 231
    .local v0, blankToggleCount:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 232
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/TrackingView;->addToggleToBar(I)V

    goto :goto_0

    .line 228
    .end local v0           #blankToggleCount:I
    :cond_1
    sub-int v5, v4, v2

    move v0, v5

    goto :goto_0

    .line 236
    .restart local v0       #blankToggleCount:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 237
    iget-object v5, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v6}, Landroid/widget/ScreenView;->getScreenCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ScreenView;->removeScreen(I)V

    goto :goto_1

    .line 240
    .end local v0           #blankToggleCount:I
    .end local v2           #extraToggleCount:I
    :cond_3
    return-void
.end method

.method private bindToggles()V
    .locals 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v2}, Landroid/widget/ScreenView;->removeAllScreens()V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 180
    .local v1, id:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/TrackingView;->addToggleToBar(I)V

    .line 181
    if-nez v1, :cond_1

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 186
    .end local v1           #id:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 178
    .restart local v1       #id:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1           #id:I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->adjustBlankToggles()V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 191
    return-void
.end method

.method private setupTab(IIZ)V
    .locals 2
    .parameter "id"
    .parameter "index"
    .parameter "selected"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, tab:Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 114
    new-instance v1, Lcom/android/systemui/statusbar/TrackingView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/TrackingView$1;-><init>(Lcom/android/systemui/statusbar/TrackingView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    aput-object v0, v1, p2

    .line 121
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/TrackingView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/TrackingView$2;-><init>(Lcom/android/systemui/statusbar/TrackingView;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TrackingView;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public OnToggleOrderChanged()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/TrackingView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/TrackingView$3;-><init>(Lcom/android/systemui/statusbar/TrackingView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TrackingView;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 66
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 65
    .end local v0           #down:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 68
    .restart local v0       #down:Z
    :pswitch_0
    if-eqz v0, :cond_1

    :cond_1
    move v1, v2

    .line 71
    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->onTrackingViewAttached()V

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ToggleManager;->performToggle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    const v0, 0x7f0b0022

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->setupTab(IIZ)V

    .line 97
    const v0, 0x7f0b0023

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/TrackingView;->setupTab(IIZ)V

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0, p0}, Landroid/util/ToggleManager;->setOnToggleChangedListener(Landroid/util/ToggleManager$OnToggleChangedListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0, p0}, Landroid/util/ToggleManager;->setOnToggleOrderChangeListener(Landroid/util/ToggleManager$OnToggleOrderChangedListener;)V

    .line 103
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScreenView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setScreenOffset(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mToggleBar:Landroid/widget/ScreenView;

    invoke-virtual {v0, v2}, Landroid/widget/ScreenView;->setScrollWholeScreen(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->bindToggles()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 56
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedHeight()V

    .line 58
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarService;->sTogglesInListStyle:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/TrackingView;->adjustBlankToggles()V

    .line 61
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/ToggleManager;->startLongClickAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 146
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 85
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v0}, Landroid/util/ToggleManager;->refreshAll()V

    .line 88
    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 4
    .parameter "index"
    .parameter "animationDirection"

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    array-length v1, v1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mTabs:[Landroid/view/View;

    aget-object v1, v1, v0

    if-ne v0, p1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->onTabClick(II)V

    .line 128
    return-void
.end method
