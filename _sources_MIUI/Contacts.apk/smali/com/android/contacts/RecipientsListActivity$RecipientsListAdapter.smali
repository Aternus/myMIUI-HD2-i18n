.class Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecipientsListActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsListAdapter"
.end annotation


# instance fields
.field private mBundles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/RecipientsListActivity$RecipientItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/RecipientsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/RecipientsListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {p1}, Lcom/android/contacts/RecipientsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mContactsIds:Ljava/util/HashSet;

    .line 360
    return-void
.end method


# virtual methods
.method public declared-synchronized addCursor(ILandroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x2

    .line 479
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 480
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v6, "address_book_index_titles"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 484
    new-instance v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    invoke-direct {v3, v6, p1, p2}, Lcom/android/contacts/RecipientsListActivity$RecipientItem;-><init>(Lcom/android/contacts/RecipientsListActivity;ILandroid/database/Cursor;)V

    .line 486
    .local v3, item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-object v6, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_0

    .line 487
    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v6}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v6

    if-eq v6, v10, :cond_1

    .line 488
    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->addItem(Lcom/android/contacts/RecipientsListActivity$RecipientItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 491
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v3       #item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_1
    const/4 v2, 0x0

    .line 492
    .local v2, isDup:Z
    const/4 v5, 0x0

    .line 493
    .local v5, toBeDelete:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :try_start_1
    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 494
    .local v4, originalItem:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-object v6, v4, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mIsMultiRecipientConvenstaion:Z

    if-nez v6, :cond_2

    .line 496
    const/4 v2, 0x1

    .line 497
    iget-wide v6, v4, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    iget-wide v8, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 498
    move-object v5, v4

    .line 499
    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->addItem(Lcom/android/contacts/RecipientsListActivity$RecipientItem;)V

    .line 504
    .end local v4           #originalItem:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_3
    if-eqz v5, :cond_4

    .line 505
    iget-object v6, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_4
    if-nez v2, :cond_0

    iget-boolean v6, v3, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mIsMultiRecipientConvenstaion:Z

    if-nez v6, :cond_0

    .line 510
    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->addItem(Lcom/android/contacts/RecipientsListActivity$RecipientItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #isDup:Z
    .end local v3           #item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    .end local v5           #toBeDelete:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addItem(Lcom/android/contacts/RecipientsListActivity$RecipientItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getCount()I

    move-result v1

    .line 451
    .local v1, position:I
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v2}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    iget-wide v2, v2, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    iget-wide v4, p1, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mLastContactDate:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 454
    move v1, v0

    .line 459
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 461
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v2}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mContactsIds:Ljava/util/HashSet;

    iget-wide v3, p1, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :cond_1
    monitor-exit p0

    return-void

    .line 452
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0           #i:I
    .end local v1           #position:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized changeCursor(ILandroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cursor"

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 468
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 469
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mContactsIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->addCursor(ILandroid/database/Cursor;)V

    .line 473
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$500(Lcom/android/contacts/RecipientsListActivity;)Lcom/android/contacts/SearchEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    const v2, 0x7f0b0105

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mContactsIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/RecipientsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchEditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/RecipientsListActivity$RecipientItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 405
    monitor-enter p0

    int-to-long v0, p1

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 410
    monitor-enter p0

    const/4 v1, 0x0

    .line 411
    .local v1, view:Landroid/view/View;
    if-nez p2, :cond_2

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mInflator:Landroid/view/LayoutInflater;

    invoke-static {v0, p3}, Lcom/android/contacts/RecipientsActivity;->newChildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 418
    const v0, 0x7f0700b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    const v0, 0x7f070077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const v0, 0x7f0700b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 428
    .local v8, item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    const/4 v5, 0x1

    .line 429
    .local v5, isShowName:Z
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v0

    if-eq v0, v7, :cond_0

    if-lez p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    sub-int v2, p1, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/RecipientsListActivity$RecipientItem;

    .line 431
    .local v9, preItem:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    iget-wide v2, v9, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mContactId:J

    iget-wide v10, v8, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mContactId:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_0

    .line 432
    const/4 v5, 0x0

    .line 436
    .end local v9           #preItem:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_0
    const/4 v6, 0x0

    .line 437
    .local v6, tabIndex:I
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 438
    const/4 v6, 0x1

    .line 444
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mCheckedItems:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$400(Lcom/android/contacts/RecipientsListActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v8, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/contacts/RecipientsListActivity$RecipientItem;->mDisplayName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/RecipientsActivity;->bindChildView(Ljava/util/Map;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-object v1

    .line 414
    .end local v5           #isShowName:Z
    .end local v6           #tabIndex:I
    .end local v8           #item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_2
    move-object v1, p2

    goto :goto_0

    .line 422
    :cond_3
    const v0, 0x7f070077

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const v0, 0x7f0700b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    .restart local v5       #isShowName:Z
    .restart local v6       #tabIndex:I
    .restart local v8       #item:Lcom/android/contacts/RecipientsListActivity$RecipientItem;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 440
    const/4 v6, 0x3

    goto :goto_2

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_1

    .line 442
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public notifyDatasetAdded()V
    .locals 6

    .prologue
    const/16 v3, 0x32

    const/4 v4, 0x1

    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->updateIndexer()V

    .line 364
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v1}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-le v0, v3, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    sub-int v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mRecentHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/contacts/RecipientsListActivity;->access$300(Lcom/android/contacts/RecipientsListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Lcom/android/contacts/RecipientsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_1
    return-void
.end method

.method public declared-synchronized updateIndexer()V
    .locals 4

    .prologue
    .line 518
    monitor-enter p0

    const/4 v1, 0x0

    .line 519
    .local v1, sections:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 520
    .local v0, counts:[I
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->this$0:Lcom/android/contacts/RecipientsListActivity;

    #getter for: Lcom/android/contacts/RecipientsListActivity;->mType:I
    invoke-static {v2}, Lcom/android/contacts/RecipientsListActivity;->access$200(Lcom/android/contacts/RecipientsListActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "address_book_index_titles"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mBundles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "address_book_index_counts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 523
    new-instance v2, Lcom/android/contacts/ContactsSectionIndexer;

    invoke-direct {v2, v1, v0}, Lcom/android/contacts/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    iput-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->mIndexer:Landroid/widget/SectionIndexer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
