.class public Lcom/miui/player/model/SectionCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "SectionCursorAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/SectionCursorAdapter$1;,
        Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;,
        Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;
    }
.end annotation


# instance fields
.field private final mAlphabetScrollerWidth:I

.field private final mFastScroller:Landroid/widget/FastScroller;

.field private mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

.field private mIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

.field private mIsScrolling:Z

.field private final mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

.field private final mTitleCol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"
    .parameter "fastScroller"
    .parameter "titleCol"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIsScrolling:Z

    .line 34
    iput-object p6, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Landroid/widget/FastScroller;

    .line 35
    iput-object p7, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleCol:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mAlphabetScrollerWidth:I

    .line 38
    new-instance v0, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;-><init>(Lcom/miui/player/model/SectionCursorAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    .line 39
    if-eqz p3, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 74
    iget-boolean v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIsScrolling:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mTitleCol:Ljava/lang/String;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, titleIdx:I
    if-lez v1, :cond_0

    .line 80
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/miui/player/model/SectionCursorAdapter;->mFastScroller:Landroid/widget/FastScroller;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/FastScroller;->drawThumb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/miui/player/model/SectionCursorAdapter;->mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 55
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mObserver:Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/model/SectionCursorAdapter$CursorChangedObserver;->onChange(Z)V

    .line 56
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/AlphabetSectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    invoke-virtual {v0, p1}, Lcom/miui/player/ui/view/AlphabetSectionIndexer;->getSectionForPosition(I)I

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/AlphabetSectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/SectionCursorAdapter$ScrollStateChanged;-><init>(Lcom/miui/player/model/SectionCursorAdapter;Lcom/miui/player/model/SectionCursorAdapter$1;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, v:Landroid/view/View;
    iget-object v5, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 63
    .local v1, left:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 64
    .local v2, right:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 65
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 66
    .local v0, bottom:I
    iget v5, p0, Lcom/miui/player/model/SectionCursorAdapter;->mAlphabetScrollerWidth:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v3, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :cond_0
    return-object v4
.end method

.method public setOnIndexerChangedListener(Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    .line 97
    return-void
.end method

.method protected setSectionIndexer(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 100
    instance-of v3, p1, Lcom/miui/player/model/SectionCursor;

    if-eqz v3, :cond_1

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/miui/player/model/SectionCursor;

    move-object v1, v0

    .line 102
    .local v1, c:Lcom/miui/player/model/SectionCursor;
    invoke-virtual {v1}, Lcom/miui/player/model/SectionCursor;->getSectionInfo()Lcom/miui/player/model/SectionCursor$SectionInfo;

    move-result-object v2

    .line 103
    .local v2, info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    new-instance v3, Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    iget-object v4, v2, Lcom/miui/player/model/SectionCursor$SectionInfo;->mTitles:[Ljava/lang/Character;

    iget-object v5, v2, Lcom/miui/player/model/SectionCursor$SectionInfo;->mCounts:[Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lcom/miui/player/ui/view/AlphabetSectionIndexer;-><init>([Ljava/lang/Character;[Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    .line 107
    .end local v1           #c:Lcom/miui/player/model/SectionCursor;
    .end local v2           #info:Lcom/miui/player/model/SectionCursor$SectionInfo;
    :goto_0
    iget-object v3, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    invoke-interface {v3}, Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;->onIndexerChanged()V

    .line 110
    :cond_0
    return-void

    .line 105
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIndexer:Lcom/miui/player/ui/view/AlphabetSectionIndexer;

    goto :goto_0
.end method

.method public updateScrollState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 92
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/model/SectionCursorAdapter;->mIsScrolling:Z

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
