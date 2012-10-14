.class public Lcom/miui/player/helper/controller/SearchBarController;
.super Ljava/lang/Object;
.source "SearchBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;,
        Lcom/miui/player/helper/controller/SearchBarController$Command;,
        Lcom/miui/player/helper/controller/SearchBarController$OnHistoryItemClick;,
        Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;,
        Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;
    }
.end annotation


# static fields
.field private static final MAX_HISTROY_AUTO_COMPLETE:I = 0x14

.field public static final R_SEARCH_ACTION_ID:I = 0x7f0c009d

.field public static final R_SEARCH_BAR_ID:I = 0x7f0c007c

.field public static final R_SEARCH_HISTORY_ID:I = 0x7f0c007e

.field public static final R_SEARCH_INPUT_ID:I = 0x7f0c009c

.field public static final SEARCH_CANCEL:I = 0x1

.field public static final SEARCH_GO:I


# instance fields
.field private final HISTROY_SPLIT:Ljava/lang/String;

.field protected final mCommand:Lcom/miui/player/helper/controller/SearchBarController$Command;

.field protected mFilterSearchHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHistoryList:Landroid/widget/ListView;

.field protected final mImageViewAction:Landroid/widget/ImageView;

.field protected mLastSearch:Ljava/lang/String;

.field protected final mPreferenceKey:Ljava/lang/String;

.field protected final mSearchAction:Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

.field protected final mSearchBar:Landroid/view/View;

.field protected mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

.field protected final mSearchHistroy:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSearchInput:Landroid/widget/EditText;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field protected final mVisibleChangedListener:Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/helper/controller/SearchBarController$Command;Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "preferenceKey"
    .parameter "command"
    .parameter "visibleChangedListener"
    .parameter "initSearch"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "\t"

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->HISTROY_SPLIT:Ljava/lang/String;

    .line 80
    const v0, 0x7f0c007c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    .line 81
    const v0, 0x7f0c007e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    .line 82
    iput-object p4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mVisibleChangedListener:Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;

    .line 83
    iput-object p2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/miui/player/helper/controller/SearchBarController;->mCommand:Lcom/miui/player/helper/controller/SearchBarController$Command;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    .line 88
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/SearchBarController;->updateSearchHistroy()V

    .line 90
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    .line 92
    new-instance v0, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;-><init>(Lcom/miui/player/helper/controller/SearchBarController;I)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchAction:Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

    .line 93
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchAction:Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    .line 97
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/player/helper/controller/SearchBarController$OnHistoryItemClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/SearchBarController$OnHistoryItemClick;-><init>(Lcom/miui/player/helper/controller/SearchBarController;Lcom/miui/player/helper/controller/SearchBarController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    new-instance v0, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;-><init>(Lcom/miui/player/helper/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    .line 99
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/miui/player/helper/controller/SearchBarController;->setSearchActionAnim()V

    .line 103
    invoke-direct {p0, p5}, Lcom/miui/player/helper/controller/SearchBarController;->updateActionState(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/helper/controller/SearchBarController$Command;Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;Ljava/lang/String;I)V
    .locals 3
    .parameter "a"
    .parameter "preferenceKey"
    .parameter "command"
    .parameter "visibleChangedListener"
    .parameter "initSearch"
    .parameter "bgId"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/miui/player/helper/controller/SearchBarController;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/player/helper/controller/SearchBarController$Command;Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mImageViewAction:Landroid/widget/ImageView;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/helper/controller/SearchBarController;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/SearchBarController;->updateActionState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/helper/controller/SearchBarController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/SearchBarController;->searchAction(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/player/helper/controller/SearchBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/player/helper/controller/SearchBarController;->clearSearchHistory()V

    return-void
.end method

.method private clearSearchHistory()V
    .locals 3

    .prologue
    .line 327
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 328
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 330
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/miui/player/helper/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/miui/player/helper/controller/SearchBarController;->showHistoryList(Z)V

    .line 337
    return-void
.end method

.method private saveSearchHistroy()V
    .locals 8

    .prologue
    .line 290
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 297
    .local v1, i:I
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 298
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 299
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 303
    const/16 v7, 0x14

    if-lt v1, v7, :cond_2

    .line 309
    .end local v6           #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, res:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 321
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private searchAction(I)V
    .locals 4
    .parameter "actionType"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mCommand:Lcom/miui/player/helper/controller/SearchBarController$Command;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 210
    .local v0, editorInput:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 212
    .local v1, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 215
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/player/helper/controller/SearchBarController;->updateSearchHistory(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/miui/player/helper/controller/SearchBarController;->mCommand:Lcom/miui/player/helper/controller/SearchBarController$Command;

    iget-object v3, p0, Lcom/miui/player/helper/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/miui/player/helper/controller/SearchBarController$Command;->doSearch(Ljava/lang/String;I)V

    .line 222
    .end local v0           #editorInput:Landroid/widget/EditText;
    .end local v1           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private setSearchActionAnim()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/miui/player/helper/controller/SearchBarController$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/controller/SearchBarController$1;-><init>(Lcom/miui/player/helper/controller/SearchBarController;)V

    iput-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    .line 154
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/player/helper/controller/SearchBarController$2;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/controller/SearchBarController$2;-><init>(Lcom/miui/player/helper/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/player/helper/controller/SearchBarController$3;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/controller/SearchBarController$3;-><init>(Lcom/miui/player/helper/controller/SearchBarController;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    return-void
.end method

.method private updateActionState(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchAction:Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->setActionType(I)V

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/helper/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchAction:Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController$OnSearchAction;->setActionType(I)V

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/player/helper/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAdapter(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 263
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    if-eqz v4, :cond_1

    .line 278
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v4}, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->notifyDataSetChanged()V

    .line 279
    :cond_1
    return-void

    .line 267
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, keyLowercase:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 269
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 273
    iget-object v4, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateSearchHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "newSearch"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/SearchBarController;->updateAdapter(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/miui/player/helper/controller/SearchBarController;->saveSearchHistroy()V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSearchInput()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 130
    return-void
.end method

.method public getSearchBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    return-object v0
.end method

.method public isHistoryVisible()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastSearchInput(Ljava/lang/String;)V
    .locals 0
    .parameter "searchInput"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/player/helper/controller/SearchBarController;->mLastSearch:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public showHistoryList(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 189
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mVisibleChangedListener:Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mVisibleChangedListener:Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;->onVisibleChanged(Z)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mHistoryList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/miui/player/helper/controller/SearchBarController;->mVisibleChangedListener:Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;

    invoke-interface {v0, v2}, Lcom/miui/player/helper/controller/SearchBarController$OnHistoryListVisibleChangedListener;->onVisibleChanged(Z)V

    goto :goto_0
.end method

.method public updateSearchHistroy()V
    .locals 9

    .prologue
    .line 244
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 245
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 246
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 248
    .local v5, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mPreferenceKey:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, raw:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 250
    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, histroy:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 252
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 253
    .local v6, str:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistroy:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mFilterSearchHistory:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #histroy:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v6           #str:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    if-eqz v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/miui/player/helper/controller/SearchBarController;->mSearchHistoryAdapter:Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;

    invoke-virtual {v7}, Lcom/miui/player/helper/controller/SearchBarController$SearchHistroyAdapter;->notifyDataSetChanged()V

    .line 260
    :cond_1
    return-void
.end method
