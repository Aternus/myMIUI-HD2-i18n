.class public Lcom/android/sidekick/GroupSearchView;
.super Landroid/widget/LinearLayout;
.source "GroupSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;,
        Lcom/android/sidekick/GroupSearchView$OnLaunchSuggestionListener;
    }
.end annotation


# instance fields
.field private mDeleteTipsText:Landroid/view/View;

.field private mHistoryLoaded:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Landroid/app/Activity;

.field private mRelultListHeaderHintRecent:Ljava/lang/String;

.field private mRelultListHeaderHintSearch:Ljava/lang/String;

.field private mResultList:Lcom/android/sidekick/PinnedHeaderListView;

.field private mResultListFooter:Landroid/view/View;

.field private mResultListHeader:Landroid/view/View;

.field private mResultListHeaderText:Landroid/widget/TextView;

.field private mResultView:Lcom/android/sidekick/ResultView;

.field private mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchFilter:Landroid/widget/Filter;

.field private mSearchNoResultTitle:Landroid/widget/TextView;

.field private mSearchNoResultTitleText:Ljava/lang/String;

.field private mSearchRecentHint:Landroid/widget/TextView;

.field private mSearchSettingBtn:Landroid/view/View;

.field private mSearchWebBtn:Landroid/view/View;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUserQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    .line 72
    iput-boolean v1, p0, Lcom/android/sidekick/GroupSearchView;->mHistoryLoaded:Z

    .line 213
    new-instance v0, Lcom/android/sidekick/GroupSearchView$1;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupSearchView$1;-><init>(Lcom/android/sidekick/GroupSearchView;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 232
    new-instance v0, Lcom/android/sidekick/GroupSearchView$2;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupSearchView$2;-><init>(Lcom/android/sidekick/GroupSearchView;)V

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 80
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 81
    iput-boolean v1, p0, Lcom/android/sidekick/GroupSearchView;->mHistoryLoaded:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/sidekick/GroupSearchView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchView;->setUserQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sidekick/GroupSearchView;)Lcom/android/sidekick/PinnedHeaderListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sidekick/GroupSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sidekick/GroupSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/sidekick/GroupSearchView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/sidekick/GroupSearchView;->isSearchEditTextEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/sidekick/GroupSearchView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchView;->launchQuerySearch(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/sidekick/GroupSearchView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/sidekick/GroupSearchView;->setViewState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintSearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sidekick/GroupSearchView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintRecent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sidekick/GroupSearchView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultListHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private closeSearchAdapter()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    move-object v0, v2

    check-cast v0, Lcom/android/sidekick/GroupSearchAdapter;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/android/sidekick/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v1}, Lcom/android/sidekick/GroupSearchAdapter;->close()V

    .line 210
    :cond_0
    iput-object v2, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    .line 211
    return-void
.end method

.method public static createSearchSettingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    const-class v1, Lcom/android/sidekick/SearchableItemsSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 273
    return-object v0
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/android/sidekick/GroupSearchView;
    .locals 4
    .parameter "context"

    .prologue
    .line 85
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sidekick/GroupSearchView;

    .line 87
    .local v0, view:Lcom/android/sidekick/GroupSearchView;
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 88
    check-cast p0, Landroid/app/Activity;

    .end local p0
    iput-object p0, v0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    .line 90
    :cond_0
    invoke-direct {v0}, Lcom/android/sidekick/GroupSearchView;->init()V

    .line 91
    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const v9, 0x7f090023

    const v6, 0x7f090022

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 95
    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    .line 96
    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    .line 98
    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    .line 100
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030007

    invoke-virtual {v4, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    .line 105
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    const v5, 0x7f090021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mDeleteTipsText:Landroid/view/View;

    .line 108
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchWebBtn:Landroid/view/View;

    .line 109
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchSettingBtn:Landroid/view/View;

    .line 110
    const v4, 0x7f090006

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/sidekick/PinnedHeaderListView;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    .line 111
    new-instance v4, Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sidekick/GroupSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v4, v5, p0, v6}, Lcom/android/sidekick/GroupSearchAdapter;-><init>(Landroid/content/Context;Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;Ljava/util/WeakHashMap;)V

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    .line 112
    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/android/sidekick/GroupSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/sidekick/ResultView;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultView:Lcom/android/sidekick/ResultView;

    .line 113
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultView:Lcom/android/sidekick/ResultView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v4, v5}, Lcom/android/sidekick/ResultView;->setSearchAdapter(Lcom/android/sidekick/GroupSearchAdapter;)V

    .line 114
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v4, p0}, Lcom/android/sidekick/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v4, p0}, Lcom/android/sidekick/PinnedHeaderListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintSearch:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mRelultListHeaderHintRecent:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030008

    invoke-virtual {v4, v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListHeader:Landroid/view/View;

    .line 120
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListHeader:Landroid/view/View;

    const v5, 0x7f090024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultListHeaderText:Landroid/widget/TextView;

    .line 121
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mResultListHeader:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Lcom/android/sidekick/PinnedHeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 122
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mResultListFooter:Landroid/view/View;

    invoke-virtual {v4, v5, v8, v7}, Lcom/android/sidekick/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 123
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v4, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v4, p0}, Lcom/android/sidekick/PinnedHeaderListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v5}, Lcom/android/sidekick/GroupSearchAdapter;->getDeleteModeListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 127
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v3, pv:Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 130
    .local v0, iconSize:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 132
    .local v2, padding:I
    invoke-virtual {v3, v2, v2, v2, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 133
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v4, v3}, Lcom/android/sidekick/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    .line 135
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    iget-object v5, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v4, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    iget-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v4}, Lcom/android/sidekick/GroupSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchFilter:Landroid/widget/Filter;

    .line 138
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitleText:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private isSearchEditTextEmpty()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private launchIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 315
    if-nez p1, :cond_0

    move v1, v2

    .line 323
    :goto_0
    return v1

    .line 319
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    const/4 v1, 0x1

    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/RuntimeException;
    move v1, v2

    .line 323
    goto :goto_0
.end method

.method private launchQuerySearch(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/sidekick/GroupSearchView;->launchQuerySearch(IILjava/lang/String;)V

    .line 278
    return-void
.end method

.method private launchQuerySearch(IILjava/lang/String;)V
    .locals 11
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, query:Ljava/lang/String;
    const-string v1, "android.intent.action.SEARCH"

    .line 290
    .local v1, action:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 291
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/sidekick/GroupSearchAdapter;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v10

    .line 294
    .local v10, intent:Landroid/content/Intent;
    invoke-direct {p0, v10}, Lcom/android/sidekick/GroupSearchView;->launchIntent(Landroid/content/Intent;)Z

    .line 296
    .end local v10           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private launchSearchSetting()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/sidekick/GroupSearchView;->createSearchSettingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchView;->launchIntent(Landroid/content/Intent;)Z

    .line 268
    return-void
.end method

.method private launchSuggestion(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 299
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/sidekick/GroupSearchView;->launchSuggestion(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 4
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v2}, Lcom/android/sidekick/GroupSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 304
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    iget-object v3, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v0, v3, p2, p3}, Lcom/android/sidekick/GroupSearchAdapter;->createCorpusIntent(Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 309
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/sidekick/GroupSearchView;->launchIntent(Landroid/content/Intent;)Z

    move-result v2

    .line 311
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v2

    .line 306
    :cond_0
    iget-object v3, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 311
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private launchWebSearch()Z
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/sidekick/GroupSearchView;->isSearchEditTextEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/sidekick/GroupSearchAdapter;->createWebSearchIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchView;->launchIntent(Landroid/content/Intent;)Z

    move-result v0

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    if-nez v1, :cond_0

    move v1, v2

    .line 263
    :goto_0
    return v1

    .line 256
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 258
    const/16 v1, 0x42

    if-eq p2, v1, :cond_1

    const/16 v1, 0x54

    if-ne p2, v1, :cond_2

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v1}, Lcom/android/sidekick/PinnedHeaderListView;->getSelectedItemPosition()I

    move-result v0

    .line 260
    .local v0, position:I
    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchView;->launchSuggestion(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #position:I
    :cond_2
    move v1, v2

    .line 263
    goto :goto_0
.end method

.method private setUserQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 360
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 361
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    return-void
.end method

.method private setViewState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mDeleteTipsText:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchWebBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchSettingBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/android/sidekick/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/android/sidekick/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mDeleteTipsText:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchWebBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchSettingBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchRecentHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitleText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchNoResultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultList:Lcom/android/sidekick/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/android/sidekick/PinnedHeaderListView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mDeleteTipsText:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchWebBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchSettingBtn:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 420
    :sswitch_0
    invoke-direct {p0}, Lcom/android/sidekick/GroupSearchView;->launchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 425
    :sswitch_1
    invoke-direct {p0}, Lcom/android/sidekick/GroupSearchView;->launchSearchSetting()V

    goto :goto_0

    .line 428
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sidekick/GroupSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090002 -> :sswitch_2
        0x7f090022 -> :sswitch_0
        0x7f090023 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/sidekick/GroupSearchView;->closeSearchAdapter()V

    .line 186
    return-void
.end method

.method public onEndQuery(II)V
    .locals 2
    .parameter "resultCount"
    .parameter "resultType"

    .prologue
    .line 407
    new-instance v0, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;-><init>(Lcom/android/sidekick/GroupSearchView;II)V

    .line 408
    .local v0, run:Lcom/android/sidekick/GroupSearchView$EndQueryRunnable;
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method onHide()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/sidekick/GroupSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 200
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultView:Lcom/android/sidekick/ResultView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sidekick/ResultView;->setDrawingCacheEnabled(Z)V

    .line 201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchView;->launchSuggestion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/sidekick/GroupSearchView$OnLaunchSuggestionListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mParent:Landroid/app/Activity;

    check-cast v0, Lcom/android/sidekick/GroupSearchView$OnLaunchSuggestionListener;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/android/sidekick/GroupSearchView$OnLaunchSuggestionListener;->onLaunchSuggestion(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/sidekick/GroupSearchView;->setUserQuery(Ljava/lang/String;)V

    .line 442
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method onShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 190
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mResultView:Lcom/android/sidekick/ResultView;

    invoke-virtual {v0, v2}, Lcom/android/sidekick/ResultView;->setDrawingCacheEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchAdapter;->onShow()V

    .line 192
    iget-boolean v0, p0, Lcom/android/sidekick/GroupSearchView;->mHistoryLoaded:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sidekick/GroupSearchView;->mHistoryLoaded:Z

    .line 196
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onStartQuery()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/android/sidekick/GroupSearchView$3;

    invoke-direct {v0, p0}, Lcom/android/sidekick/GroupSearchView$3;-><init>(Lcom/android/sidekick/GroupSearchView;)V

    invoke-virtual {p0, v0}, Lcom/android/sidekick/GroupSearchView;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "ev"

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method reloadSearchSettings()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchAdapter:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchAdapter;->reloadSearchSettings()V

    .line 438
    :cond_0
    return-void
.end method

.method setQuery(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mUserQuery:Ljava/lang/CharSequence;

    if-ne v0, p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchView;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
