.class public Lcom/android/systemui/statusbar/StatusBarToggles;
.super Landroid/widget/LinearLayout;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/util/ToggleManager$OnToggleChangedListener;
.implements Landroid/util/ToggleManager$OnToggleOrderChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mID2Toggle:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mManualBrightness:Landroid/widget/SeekBar;

.field private mManualBrightnessPanel:Landroid/view/View;

.field private final mResource:Landroid/content/res/Resources;

.field mService:Lcom/android/systemui/statusbar/StatusBarService;

.field private mToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    .line 53
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarService;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mResource:Landroid/content/res/Resources;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightnessPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private bindToggle(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "toggle"
    .parameter "id"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 162
    invoke-static {p2}, Landroid/util/ToggleManager;->getName(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 163
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarToggles;->OnToggleChanged(I)V

    .line 166
    return-void
.end method

.method private bindToggles()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 150
    .local v1, toggleIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarToggles;->bindToggle(Landroid/widget/TextView;I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    const v2, 0x7f0b0018

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarToggles;->bindToggle(Landroid/widget/TextView;I)V

    .line 157
    return-void
.end method


# virtual methods
.method public OnToggleChanged(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarToggles$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarToggles$2;-><init>(Lcom/android/systemui/statusbar/StatusBarToggles;I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarToggles;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public OnToggleOrderChanged()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarToggles;->bindToggles()V

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ToggleManager;->performToggle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 107
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v5, v5, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/util/ToggleManager;->setBrightnessToggleMode(Z)V

    .line 62
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v5, v5, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v5, p0}, Landroid/util/ToggleManager;->setOnToggleChangedListener(Landroid/util/ToggleManager$OnToggleChangedListener;)V

    .line 63
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v5, v5, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v5, p0}, Landroid/util/ToggleManager;->setOnToggleOrderChangeListener(Landroid/util/ToggleManager$OnToggleOrderChangedListener;)V

    .line 65
    const v5, 0x7f0b0019

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightnessPanel:Landroid/view/View;

    .line 66
    const v5, 0x7f0b001a

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/StatusBarToggles;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    .line 67
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 68
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v6, v6, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v6}, Landroid/util/ToggleManager;->getBrightnessLevel()I

    move-result v6

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarToggles$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/StatusBarToggles$1;-><init>(Lcom/android/systemui/statusbar/StatusBarToggles;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarToggles;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarToggles;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b0016

    if-ne v5, v6, :cond_1

    .line 91
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 92
    .local v4, viewGroup:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 93
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0b0017

    if-ne v5, v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mToggleList:Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v2           #j:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v3           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarToggles;->bindToggles()V

    .line 101
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ToggleManager;->startLongClickAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 114
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
