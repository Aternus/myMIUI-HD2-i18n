.class Lcom/android/contacts/ContactPickerListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactPickerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/ContactPickerListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/ContactPickerListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 218
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 222
    iget-object v4, p0, Lcom/android/contacts/ContactPickerListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPickerListActivity;

    .line 223
    .local v0, activity:Lcom/android/contacts/ContactPickerListActivity;
    if-eqz v0, :cond_3

    .line 224
    if-eqz p3, :cond_2

    .line 225
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mNoPhotoContactIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$000(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 226
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$100(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 227
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$200(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/ContactPickerActivity;->mContactIdNameMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 228
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 230
    .local v1, contactId:J
    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x7

    invoke-interface {p3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mNoPhotoContactIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$000(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mAllContactIds:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$100(Lcom/android/contacts/ContactPickerListActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 235
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$200(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/ContactPickerActivity;->mContactIdNameMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    .end local v1           #contactId:J
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/contacts/ContactPickerListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 239
    #getter for: Lcom/android/contacts/ContactPickerListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerListActivity;->access$300(Lcom/android/contacts/ContactPickerListActivity;)Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/contacts/ContactPickerListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 246
    :cond_2
    :goto_1
    return-void

    .line 242
    :cond_3
    if-eqz p3, :cond_2

    .line 243
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
