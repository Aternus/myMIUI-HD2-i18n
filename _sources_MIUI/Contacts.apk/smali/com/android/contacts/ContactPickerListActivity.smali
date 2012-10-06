.class public Lcom/android/contacts/ContactPickerListActivity;
.super Landroid/app/ListActivity;
.source "ContactPickerListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;,
        Lcom/android/contacts/ContactPickerListActivity$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAllContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

.field private mMode:I

.field private final mNoPhotoContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mParentActivity:Lcom/android/contacts/ContactPickerActivity;

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mQueryHandler:Lcom/android/contacts/ContactPickerListActivity$QueryHandler;

.field private mSearchEditText:Lcom/android/contacts/SearchEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mNoPhotoContactIds:Ljava/util/HashSet;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mNoPhotoContactIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactPickerListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactPickerListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->hideSoftKeyboard()V

    return-void
.end method

.method private getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filter"

    .prologue
    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 274
    .local v0, baseUri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 271
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #baseUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method private getTextFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriToQuery()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 177
    iget v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 416
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 418
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 419
    return-void
.end method

.method private onSearchTextChanged()V
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->setEmptyText()V

    .line 392
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 393
    .local v0, filter:Landroid/widget/Filter;
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method

.method private setEmptyText()V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 412
    :cond_0
    return-void
.end method

.method private setupFastScroller()V
    .locals 3

    .prologue
    .line 168
    const v1, 0x7f07004a

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/AlphabetScroller;

    .line 169
    .local v0, scrollerView:Lcom/android/contacts/ui/widget/AlphabetScroller;
    iget v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupSearchViewHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, header:Landroid/view/View;
    iget v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 159
    const v1, 0x7f0700ab

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/SearchEditText;

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    .line 160
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v1, p0}, Lcom/android/contacts/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v7, "sort_key_alt"

    .line 191
    const-string v0, "ContactPickerListActivity"

    const-string v3, "start query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->setEmptyText()V

    .line 195
    iget v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v5, "sort_key_alt"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v5, "starred=1"

    const-string v6, "sort_key_alt"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->onSearchTextChanged()V

    .line 387
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 378
    return-void
.end method

.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    const-string v5, "sort_key_alt"

    .line 250
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 252
    .local v6, filterEmpty:Z
    if-eqz v6, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v4, "sort_key_alt"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    .line 257
    :cond_0
    iget v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 263
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filtering not allowed in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactPickerListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v4, "sort_key_alt"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerListActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/ContactPickerActivity;

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPickerActivity;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPickerActivity;

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    .line 121
    new-instance v1, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mQueryHandler:Lcom/android/contacts/ContactPickerListActivity$QueryHandler;

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v1, "action_default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    .line 130
    :cond_0
    :goto_1
    new-instance v1, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;-><init>(Lcom/android/contacts/ContactPickerListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->setupSearchViewHeader()V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactPickerListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->setupFastScroller()V

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->startQuery()V

    .line 138
    return-void

    .line 116
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/contacts/ContactPhotoLoader;

    const v2, 0x10803b6

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    goto :goto_0

    .line 126
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v1, "action_starred"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerActivity;->isSingleContactPick()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mMode:I

    if-nez v0, :cond_0

    .line 439
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 440
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->stop()V

    .line 144
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 423
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/ContactPickerListActivity;->hideSoftKeyboard()V

    .line 425
    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v2, p3, v3

    .line 426
    .local v2, realPosition:I
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 428
    .local v0, contactId:J
    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerActivity;->isSingleContactPick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/ContactPickerActivity;->setSingleContactResult(J)V

    .line 434
    .end local v0           #contactId:J
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v0       #contactId:J
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    check-cast p2, Lcom/android/contacts/ContactListItemView;

    .end local p2
    invoke-virtual {v3, p2, v0, v1}, Lcom/android/contacts/ContactPickerActivity;->onChildClick(Lcom/android/contacts/ContactListItemView;J)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 467
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    .line 481
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerActivity;->updateDoneButton()V

    .line 482
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 476
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    iget-object v0, v0, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mNoPhotoContactIds:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700f9
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 450
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 452
    const v1, 0x7f0700f9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactPickerActivity;->isDeleteContactphoto()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, checkall:Z
    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;

    iget-object v1, v1, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 457
    const/4 v0, 0x1

    .line 460
    :cond_0
    const v1, 0x7f0700fa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 461
    const v1, 0x7f0700fb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    return v3

    .end local v0           #checkall:Z
    :cond_1
    move v2, v4

    .line 452
    goto :goto_0

    .restart local v0       #checkall:Z
    :cond_2
    move v2, v4

    .line 461
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 382
    return-void
.end method
