.class public final Lcom/android/contacts/RecipientsListActivity;
.super Landroid/app/ListActivity;
.source "RecipientsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;,
        Lcom/android/contacts/RecipientsListActivity$RecipientItem;,
        Lcom/android/contacts/RecipientsListActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private mCheckedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mLastSelectedName:Ljava/lang/CharSequence;

.field private mLastSelectedPostion:I

.field private mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

.field private mParentActivity:Lcom/android/contacts/RecipientsActivity;

.field private mQueryHandler:Lcom/android/contacts/RecipientsListActivity$QueryHandler;

.field private mRecentHeaderTextView:Landroid/widget/TextView;

.field private mSearchEditText:Lcom/android/contacts/SearchEditText;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/RecipientsListActivity;)Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/RecipientsListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/RecipientsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/RecipientsListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mRecentHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/RecipientsListActivity;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mCheckedItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/RecipientsListActivity;)Lcom/android/contacts/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    return-object v0
.end method

.method private getSelectionToQuery()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, selections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 122
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v0, v4, :cond_1

    .line 124
    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .restart local p0
    :pswitch_0
    const-string v4, "starred=1"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getOutterIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "data2"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 114
    .local v3, type:I
    if-eq v3, v6, :cond_0

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    .end local v3           #type:I
    .end local p0
    .restart local v0       #i:I
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 555
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 557
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 558
    return-void
.end method

.method private onSearchTextChanged()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->setEmptyText()V

    .line 200
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/RecipientsListActivity;->startQuery(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private setEmptyText()V
    .locals 2

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 551
    :cond_0
    return-void
.end method

.method private setupFastScroller()V
    .locals 3

    .prologue
    .line 132
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/AlphabetScroller;

    .line 133
    .local v0, scrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;
    iget v1, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupListView()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 143
    .local v0, list:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 145
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 146
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->setupSearchViewHeader()V

    .line 147
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method private setupSearchViewHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, header:Landroid/view/View;
    iget v1, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 156
    const v1, 0x7f0700ab

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/SearchEditText;

    iput-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    .line 157
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v1, p0}, Lcom/android/contacts/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030029

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 162
    const v1, 0x7f0700a9

    invoke-virtual {p0, v1}, Lcom/android/contacts/RecipientsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mRecentHeaderTextView:Landroid/widget/TextView;

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startQuery()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/RecipientsListActivity;->startQuery(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 8
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v7, "true"

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 174
    .local v4, projection:[Ljava/lang/String;
    iget v0, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong list type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    :goto_0
    sget-object v4, Lcom/android/contacts/RecipientsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mQueryHandler:Lcom/android/contacts/RecipientsListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->getSelectionToQuery()Ljava/lang/String;

    move-result-object v5

    const-string v7, "sort_key"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/RecipientsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_1
    return-void

    .line 180
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "address_book_index_extras"

    const-string v6, "true"

    invoke-virtual {v0, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, "numbers"

    const-string v6, "true"

    invoke-virtual {v0, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 189
    :pswitch_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_RECENT_CONTACTS_URI:Landroid/net/Uri;

    .line 190
    sget-object v4, Lcom/android/contacts/RecipientsActivity;->RECENT_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mQueryHandler:Lcom/android/contacts/RecipientsListActivity$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/RecipientsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->onSearchTextChanged()V

    .line 535
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 538
    return-void
.end method

.method protected getOutterIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getTabParent()Lcom/android/contacts/RecipientsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getTabParent()Lcom/android/contacts/RecipientsActivity;
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecipientsActivity;

    return-object p0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 215
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v5, p0, Lcom/android/contacts/RecipientsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 216
    .local v2, position:I
    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 217
    .local v3, recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget v4, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-ne v2, v4, :cond_0

    move v4, v7

    .line 241
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    .end local v3           #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :goto_0
    return v4

    .line 221
    .restart local v1       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v2       #position:I
    .restart local v3       #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_0
    const/4 v0, 0x0

    .line 224
    .local v0, changed:Z
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    check-cast v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 225
    .restart local v3       #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    iget-object v5, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/contacts/RecipientsActivity;->select(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    const/4 v0, 0x1

    .line 227
    iget v4, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-ne v2, v4, :cond_4

    .line 233
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 234
    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->notifyDataSetChanged()V

    .line 235
    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v4}, Lcom/android/contacts/RecipientsActivity;->updateDoneButton()V

    :cond_3
    move v4, v7

    .line 238
    goto :goto_0

    .line 230
    :cond_4
    iget v4, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-le v2, v4, :cond_5

    sub-int v4, v2, v7

    move v2, v4

    .line 231
    :goto_2
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_1

    .line 230
    :cond_5
    add-int/lit8 v4, v2, 0x1

    move v2, v4

    goto :goto_2

    .line 241
    .end local v0           #changed:Z
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #position:I
    .end local v3           #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_6
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getTabParent()Lcom/android/contacts/RecipientsActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    .line 79
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/RecipientsActivity;->getSelectedRecipients()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mCheckedItems:Ljava/util/Map;

    .line 80
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "list_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/RecipientsListActivity;->mType:I

    .line 81
    new-instance v0, Lcom/android/contacts/RecipientsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecipientsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mQueryHandler:Lcom/android/contacts/RecipientsListActivity$QueryHandler;

    .line 82
    new-instance v0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;-><init>(Lcom/android/contacts/RecipientsListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    .line 83
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientsListActivity;->setContentView(I)V

    .line 84
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/android/contacts/RecipientsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->setupFastScroller()V

    .line 87
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->setupListView()V

    .line 88
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->startQuery()V

    .line 89
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 246
    iget v5, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-ltz v5, :cond_0

    .line 247
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 248
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 249
    .local v2, realPosition:I
    iget v5, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-eq v5, v2, :cond_0

    .line 250
    iget-object v5, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 251
    .local v3, recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-object v5, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 252
    const v5, 0x7f0b016c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedName:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/RecipientsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, text:Ljava/lang/String;
    invoke-interface {p1, v8, v9, v8, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 256
    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #realPosition:I
    .end local v3           #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 257
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 276
    const/4 v0, 0x2

    const v1, 0x7f0b016d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 277
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->hideSoftKeyboard()V

    .line 262
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 264
    .local v0, realPosition:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v1, p2}, Lcom/android/contacts/RecipientsActivity;->onChildClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iput v0, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    .line 267
    const v1, 0x7f070046

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedName:Ljava/lang/CharSequence;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget v1, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    if-ne v0, v1, :cond_0

    .line 269
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/contacts/RecipientsListActivity;->mLastSelectedPostion:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 284
    .local v1, recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    iget-object v3, v1, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/contacts/RecipientsActivity;->select(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 286
    .end local v1           #recipient:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->notifyDataSetChanged()V

    .line 287
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;

    invoke-virtual {v2}, Lcom/android/contacts/RecipientsActivity;->updateDoneButton()V

    .line 289
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/ListActivity;->onPostResume()V

    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity;->mCheckedItems:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/android/contacts/RecipientsActivity;->refreshChildrenCheckedStatus(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 569
    if-lez p2, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/android/contacts/RecipientsListActivity;->hideSoftKeyboard()V

    .line 572
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 564
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 541
    return-void
.end method
