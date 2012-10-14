.class public Lcom/android/browser/ui/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"

# interfaces
.implements Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;


# static fields
.field public static final HOME_SCREEN_ADD_SHORTCUT_URL_MODE:I = 0x5

.field public static final HOME_SCREEN_INPUT_MODE:I = 0x1

.field public static final HOME_SCREEN_MODE:I = 0x0

.field public static final HOME_SCREEN_SEARCH_MODE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.ui.TitleView"

.field public static final NAV_INPUT_MODE:I = 0x4

.field public static final NAV_MODE:I = 0x3


# instance fields
.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

.field private final mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

.field private mGoButton:Landroid/widget/ImageView;

.field private mHideUrlBar:Z

.field private mLoadingSuggestionProgressBar:Landroid/widget/ProgressBar;

.field private mMode:I

.field private mScaleLeft:Landroid/view/animation/Animation;

.field private mScaleRight:Landroid/view/animation/Animation;

.field private mSearchBox:Landroid/view/View;

.field private mSearchBoxTextView:Landroid/widget/TextView;

.field private mSearchBoxWidth:I

.field private mSearchEngineAdapter:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

.field private mSearchView:Landroid/view/View;

.field private mSelectUrlDoneButton:Landroid/widget/ImageView;

.field private mSplitLayout:Landroid/widget/LinearLayout;

.field private mTabSelectLayout:Landroid/widget/HorizontalScrollView;

.field private mTabSelectView:Lcom/android/browser/ui/TabSelectView;

.field private mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

.field private mUrlBox:Landroid/view/View;

.field private mUrlBoxText:Ljava/lang/CharSequence;

.field private mUrlBoxTextView:Landroid/widget/TextView;

.field private mUrlBoxWidth:I

.field private mUrlLayout:Landroid/widget/LinearLayout;

.field private mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

.field private twopartsLayout:Landroid/widget/LinearLayout;

.field private urlsearchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    .line 101
    iput-boolean v3, p0, Lcom/android/browser/ui/TitleView;->mHideUrlBar:Z

    .line 105
    iput-object p1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 106
    new-instance v1, Lcom/android/browser/ui/UrlTitleBarView;

    invoke-direct {v1, p1}, Lcom/android/browser/ui/UrlTitleBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    .line 107
    new-instance v1, Lcom/android/browser/ui/TabSelectView;

    invoke-direct {v1, p1}, Lcom/android/browser/ui/TabSelectView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f03001e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlLayout:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    .line 114
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    const v1, 0x7f0d0073

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mTabSelectLayout:Landroid/widget/HorizontalScrollView;

    .line 119
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mTabSelectLayout:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 120
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSplitLayout:Landroid/widget/LinearLayout;

    .line 121
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSplitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 127
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    .line 128
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    .line 132
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxWidth:I

    .line 133
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    const v2, 0x7f0d007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxTextView:Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxText:Ljava/lang/CharSequence;

    .line 136
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    .line 137
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxWidth:I

    .line 138
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mScaleRight:Landroid/view/animation/Animation;

    .line 141
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mScaleRight:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/browser/ui/TitleView$1;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$1;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    new-instance v2, Lcom/android/browser/ui/TitleView$2;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$2;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mScaleLeft:Landroid/view/animation/Animation;

    .line 171
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mScaleLeft:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/browser/ui/TitleView$3;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$3;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    new-instance v2, Lcom/android/browser/ui/TitleView$4;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$4;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    .line 199
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/browser/ui/TitleView$5;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$5;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    .line 219
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/browser/ui/TitleView$6;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$6;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mLoadingSuggestionProgressBar:Landroid/widget/ProgressBar;

    .line 226
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mLoadingSuggestionProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    const v2, 0x7f0d007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    .line 229
    new-instance v1, Lcom/android/browser/controller/SuggestionAdapter;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-direct {v1, p1, p0, p0, v2}, Lcom/android/browser/controller/SuggestionAdapter;-><init>(Landroid/content/Context;Lcom/android/browser/ui/TitleView;Lcom/android/browser/controller/SuggestionAdapter$OnLoadingStatusChangeListener;Lcom/android/browser/ui/MiRenAutoCompleteTextView;)V

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

    .line 230
    new-instance v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    invoke-direct {v1, p1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchEngineAdapter:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    .line 231
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v3}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setThreshold(I)V

    .line 233
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    new-instance v2, Lcom/android/browser/ui/TitleView$7;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$7;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 265
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    new-instance v2, Lcom/android/browser/ui/TitleView$8;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$8;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    new-instance v2, Lcom/android/browser/ui/TitleView$9;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$9;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    new-instance v2, Lcom/android/browser/ui/TitleView$10;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/TitleView$10;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/TitleView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/TitleView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/ui/TitleView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/ui/TitleView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SearchEngineSelectionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSearchEngineAdapter:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/controller/SuggestionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/UrlTitleBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/browser/ui/TitleView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/browser/ui/TitleView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mLoadingSuggestionProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ui/TitleView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/ui/TitleView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mScaleRight:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/ui/TitleView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ui/TitleView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/ui/TitleView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mScaleLeft:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/ui/TitleView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/TitleView;->addShortcutForUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/ui/TitleView;)Lcom/android/browser/ui/MiRenBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    return-object v0
.end method

.method private addShortcutForUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "url"
    .parameter "title"

    .prologue
    .line 490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->fixUserTypedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, newUrl:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v2, 0x7f0900be

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 499
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 504
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x1

    .line 505
    .local v12, isNotABookmark:Z
    const-wide/16 v10, -0x1

    .line 508
    .local v10, id:J
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 510
    const/4 v12, 0x0

    .line 512
    const/16 v1, 0xd

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 513
    .local v9, folderId:I
    invoke-static {v0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 515
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v2, 0x7f09001b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 519
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 523
    .end local v9           #folderId:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 527
    move v5, v12

    .line 528
    .local v5, isNotABookmarkFinal:Z
    move-wide v3, v10

    .line 529
    .local v3, idFinal:J
    move-object v7, p2

    .line 530
    .local v7, titleFinal:Ljava/lang/String;
    new-instance v1, Lcom/android/browser/ui/TitleView$11;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/browser/ui/TitleView$11;-><init>(Lcom/android/browser/ui/TitleView;JZLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v3           #idFinal:J
    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/TitleView$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 523
    .end local v5           #isNotABookmarkFinal:Z
    .end local v7           #titleFinal:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public addTabTitle(IZ)V
    .locals 1
    .parameter "index"
    .parameter "switchToNewTab"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/TabSelectView;->addTabTitle(IZ)V

    .line 335
    return-void
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    return v0
.end method

.method public hideUrlbar()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSplitLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/TitleView;->mHideUrlBar:Z

    .line 601
    return-void
.end method

.method public isHideUrlBar()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/browser/ui/TitleView;->mHideUrlBar:Z

    return v0
.end method

.method public onFinishLoadingNewSuggestion()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    new-instance v1, Lcom/android/browser/ui/TitleView$12;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/TitleView$12;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStartLoadingNewSuggestion()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    new-instance v1, Lcom/android/browser/ui/TitleView$13;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/TitleView$13;-><init>(Lcom/android/browser/ui/TitleView;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refeshFuncBtn(Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;)V
    .locals 1
    .parameter "mFuncBtnType"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/UrlTitleBarView;->refeshFuncBtn(Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;)V

    .line 358
    return-void
.end method

.method public removeTabTitle(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/TabSelectView;->removeTabTitle(I)V

    .line 344
    return-void
.end method

.method public setLoadingProgress(ILcom/android/browser/ui/MiRenWebView;)V
    .locals 1
    .parameter "progress"
    .parameter "miRenWebView"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/UrlTitleBarView;->setLoadingProgress(ILcom/android/browser/ui/MiRenWebView;)V

    .line 362
    return-void
.end method

.method public setLock(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/UrlTitleBarView;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 314
    return-void
.end method

.method public setOnClickListener(IILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "index"
    .parameter "switchClick"
    .parameter "onClickListener"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/ui/TabSelectView;->setOnClickListener(IILandroid/view/View$OnClickListener;)V

    .line 340
    return-void
.end method

.method public setTitle(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "title"

    .prologue
    .line 351
    const-string v0, "about:blank"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/TabSelectView;->setTitle(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 317
    const-string v2, "about:blank"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v2, p1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v2, p1}, Lcom/android/browser/ui/UrlTitleBarView;->setUrl(Ljava/lang/String;)V

    .line 322
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, realUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, mappedUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    goto :goto_0

    .line 329
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    goto :goto_0
.end method

.method public setUrlTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 307
    const-string v0, "about:blank"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/UrlTitleBarView;->setUrlTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showUrlbar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mUrlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mSplitLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 606
    iput-boolean v2, p0, Lcom/android/browser/ui/TitleView;->mHideUrlBar:Z

    .line 607
    return-void
.end method

.method public switchMode(I)V
    .locals 9
    .parameter "mode"

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 365
    iget v1, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    if-ne v1, p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setPadding(IIII)V

    .line 371
    packed-switch p1, :pswitch_data_0

    .line 472
    :goto_1
    iput p1, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    .line 474
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget v1, p0, Lcom/android/browser/ui/TitleView;->mMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->selectAll()V

    .line 481
    :goto_2
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-virtual {v1}, Lcom/android/browser/controller/SuggestionAdapter;->notifyDataSetInvalidated()V

    .line 482
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mAdapter:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-virtual {v1}, Lcom/android/browser/controller/SuggestionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 373
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v5}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 380
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlBoxText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBox:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 385
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v0

    .line 386
    .local v0, searchEngine:I
    packed-switch v0, :pswitch_data_1

    .line 397
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_3
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .line 388
    :pswitch_1
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 391
    :pswitch_2
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 394
    :pswitch_3
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchBoxTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 409
    .end local v0           #searchEngine:I
    :pswitch_4
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v4}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .line 417
    :pswitch_5
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v5}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->requestFocus()Z

    .line 423
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 424
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 429
    :pswitch_6
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v5}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v7}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setImeOptions(I)V

    .line 432
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v8}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setRawInputType(I)V

    .line 433
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->requestFocus()Z

    .line 436
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 437
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 442
    :pswitch_7
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v5}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v7}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setImeOptions(I)V

    .line 445
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v8}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setRawInputType(I)V

    .line 446
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v6}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 449
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->requestFocus()Z

    .line 450
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 451
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 456
    :pswitch_8
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/browser/ui/TitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlView:Lcom/android/browser/ui/UrlTitleBarView;

    invoke-virtual {v1, v5}, Lcom/android/browser/ui/UrlTitleBarView;->setVisibility(I)V

    .line 458
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setPadding(IIII)V

    .line 461
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v4}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setImeOptions(I)V

    .line 462
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v6}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setRawInputType(I)V

    .line 463
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->twopartsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->urlsearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->requestFocus()Z

    .line 466
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 467
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mSelectUrlDoneButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/TitleView;->mUrlAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch

    .line 386
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public switchToTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/browser/ui/TitleView;->mTabSelectView:Lcom/android/browser/ui/TabSelectView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/TabSelectView;->switchToTab(I)V

    .line 348
    return-void
.end method
