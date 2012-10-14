.class final Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ContactPickerListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactItemListAdapter"
.end annotation


# instance fields
.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/ContactPickerListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPickerListActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 284
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 285
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const-string v5, "address_book_index_titles"

    .line 345
    if-nez p1, :cond_0

    .line 346
    iput-object v4, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 359
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 351
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, sections:[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 355
    .local v1, counts:[I
    new-instance v3, Lcom/android/contacts/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v3, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_0

    .line 357
    .end local v1           #counts:[I
    .end local v2           #sections:[Ljava/lang/String;
    :cond_1
    iput-object v4, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "itemView"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$200(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v1}, Lcom/android/contacts/ContactPickerListActivity;->access$600(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p3, p1, v1, v2}, Lcom/android/contacts/ContactPickerActivity;->bindView(Landroid/database/Cursor;Landroid/view/View;Lcom/android/contacts/ContactPhotoLoader;Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 291
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mMode:I
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$400(Lcom/android/contacts/ContactPickerListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$500(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/SearchEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    const v2, 0x7f0b0105

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ContactPickerListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 296
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "sectionIndex"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, -0x1

    .line 332
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 338
    const/4 v0, -0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 300
    new-instance v0, Lcom/android/contacts/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    .local v0, view:Lcom/android/contacts/ContactListItemView;
    new-instance v1, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    invoke-direct {v1}, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setTag(Ljava/lang/Object;)V

    .line 302
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 370
    if-lez p2, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    #calls: Lcom/android/contacts/ContactPickerListActivity;->hideSoftKeyboard()V
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$700(Lcom/android/contacts/ContactPickerListActivity;)V

    .line 373
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 364
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->this$0:Lcom/android/contacts/ContactPickerListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPickerListActivity;->doFilter(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
