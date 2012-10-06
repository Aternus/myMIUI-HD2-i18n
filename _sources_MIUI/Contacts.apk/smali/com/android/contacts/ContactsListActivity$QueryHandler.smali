.class Lcom/android/contacts/ContactsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingJoinSuggestions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2943
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 2944
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/ContactsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2945
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2953
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/ContactsListActivity;

    .line 2954
    .local v8, activity:Lcom/android/contacts/ContactsListActivity;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/contacts/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2955
    #setter for: Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z
    invoke-static {v8, v3}, Lcom/android/contacts/ContactsListActivity;->access$1102(Lcom/android/contacts/ContactsListActivity;Z)Z

    .line 2959
    if-eqz p3, :cond_4

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    if-eqz v0, :cond_4

    .line 2960
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 2961
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2962
    #getter for: Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 2968
    :goto_0
    #getter for: Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-result-object v0

    #getter for: Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->mSuggestionsCursorCount:I
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->access$1300(Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;)I

    move-result v0

    if-eqz v0, :cond_0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1400(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2970
    :cond_0
    const/16 v1, 0x2a

    #calls: Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v8, v0}, Lcom/android/contacts/ContactsListActivity;->access$1600(Lcom/android/contacts/ContactsListActivity;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id != "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1700(Lcom/android/contacts/ContactsListActivity;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    #calls: Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/contacts/ContactsListActivity;->access$1800(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    :cond_1
    :goto_1
    return-void

    .line 2964
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2965
    #getter for: Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2979
    :cond_3
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    #calls: Lcom/android/contacts/ContactsListActivity;->getShowAllContactsLabelCursor([Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v8, v0}, Lcom/android/contacts/ContactsListActivity;->access$1900(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 2982
    :cond_4
    #getter for: Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2985
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    #calls: Lcom/android/contacts/ContactsListActivity;->getShowGuidePopupWindow()Z
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2000(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    #getter for: Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2987
    #getter for: Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 2989
    .local v9, height:I
    #getter for: Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;

    invoke-direct {v1, p0, v8, v9}, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;-><init>(Lcom/android/contacts/ContactsListActivity$QueryHandler;Lcom/android/contacts/ContactsListActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3000
    #calls: Lcom/android/contacts/ContactsListActivity;->setShowGuidePopupWindow(Z)V
    invoke-static {v8, v3}, Lcom/android/contacts/ContactsListActivity;->access$2200(Lcom/android/contacts/ContactsListActivity;Z)V

    .line 3004
    .end local v9           #height:I
    :cond_5
    #getter for: Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2300(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3005
    #getter for: Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/EditableListView;

    move-result-object v0

    #getter for: Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v8}, Lcom/android/contacts/ContactsListActivity;->access$2300(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3006
    #setter for: Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;
    invoke-static {v8, v2}, Lcom/android/contacts/ContactsListActivity;->access$2302(Lcom/android/contacts/ContactsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    goto :goto_1

    .line 3009
    :cond_6
    if-eqz p3, :cond_1

    .line 3010
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public setLoadingJoinSuggestions(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2948
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 2949
    return-void
.end method
