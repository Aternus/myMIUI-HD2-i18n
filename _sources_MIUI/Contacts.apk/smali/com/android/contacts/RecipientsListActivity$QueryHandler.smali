.class Lcom/android/contacts/RecipientsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecipientsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsListActivity;
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
            "Lcom/android/contacts/RecipientsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 297
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/RecipientsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/RecipientsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 298
    return-void
.end method


# virtual methods
.method protected declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 302
    monitor-enter p0

    if-eqz p3, :cond_1

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/contacts/RecipientsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/RecipientsListActivity;

    .line 305
    .local v0, activity:Lcom/android/contacts/RecipientsListActivity;
    if-eqz v0, :cond_0

    .line 306
    #getter for: Lcom/android/contacts/RecipientsListActivity;->mListAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$000(Lcom/android/contacts/RecipientsListActivity;)Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;

    move-result-object v1

    .line 307
    .local v1, listAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;
    invoke-virtual {v1, p1, p3}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 308
    invoke-virtual {v1}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->notifyDatasetAdded()V

    .line 309
    invoke-virtual {v1}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->notifyDataSetChanged()V

    .line 310
    invoke-virtual {v1}, Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    #getter for: Lcom/android/contacts/RecipientsListActivity;->mEmptyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/RecipientsListActivity;->access$100(Lcom/android/contacts/RecipientsListActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 315
    .end local v0           #activity:Lcom/android/contacts/RecipientsListActivity;
    .end local v1           #listAdapter:Lcom/android/contacts/RecipientsListActivity$RecipientsListAdapter;
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_1
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
