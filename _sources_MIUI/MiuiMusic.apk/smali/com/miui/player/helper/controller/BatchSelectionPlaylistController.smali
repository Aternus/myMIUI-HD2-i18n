.class public Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;,
        Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;
    }
.end annotation


# instance fields
.field private final mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

.field private final mCommitView:Landroid/view/View;

.field private final mConfirm:Ljava/lang/String;

.field private final mConfirmView:Landroid/widget/TextView;

.field private final mSelectAllView:Landroid/widget/TextView;

.field private final mSelectChangeListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;

.field private final mSelectionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mToggleListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;)V
    .locals 2
    .parameter "commitView"
    .parameter "confirm"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    .line 35
    iput-object p2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirm:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectChangeListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;

    .line 37
    new-instance v0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mToggleListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;

    .line 38
    iput-object p3, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    .line 40
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirm:Ljava/lang/String;

    return-object v0
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 61
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public bindAdapterView(Landroid/widget/AdapterView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;

    invoke-direct {v0, p0, p2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method public bindSelectableView(Landroid/content/Context;Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;JLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "holder"
    .parameter "audioId"
    .parameter "providerId"

    .prologue
    .line 86
    iget-object v1, p2, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 87
    .local v1, selectBox:Landroid/widget/CheckBox;
    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object v2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectChangeListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, p2, Lcom/miui/player/model/TrackBrowserAdapter$ViewHolder;->favoriteIndicator:Landroid/widget/ImageView;

    .line 94
    .local v0, indicator:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mToggleListener:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnToggleListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .end local v0           #indicator:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public discard()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->clear()V

    .line 75
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    invoke-interface {v0, v2, v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onEndBatchSelection(ZLjava/util/Set;)V

    .line 76
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBatchSelectMode()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateButtons(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
