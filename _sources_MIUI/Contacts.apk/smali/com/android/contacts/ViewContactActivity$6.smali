.class Lcom/android/contacts/ViewContactActivity$6;
.super Landroid/os/AsyncTask;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/Entity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$oldEntities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ViewContactActivity$6;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/android/contacts/ViewContactActivity$6;->val$oldEntities:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity$6;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$6;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 865
    .local v2, newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    iget-object v3, p0, Lcom/android/contacts/ViewContactActivity$6;->val$cursor:Landroid/database/Cursor;

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1

    .line 867
    .local v1, iterator:Landroid/content/EntityIterator;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 869
    .local v0, entity:Landroid/content/Entity;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 872
    .end local v0           #entity:Landroid/content/Entity;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    throw v3

    :cond_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 874
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 861
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ViewContactActivity$6;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, newEntities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-nez p1, :cond_0

    .line 893
    :goto_0
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    monitor-enter v0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/ViewContactActivity;->access$600(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$6;->val$oldEntities:Ljava/util/ArrayList;

    if-eq v1, v2, :cond_1

    .line 887
    monitor-exit v0

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 889
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    #setter for: Lcom/android/contacts/ViewContactActivity;->mEntities:Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/android/contacts/ViewContactActivity;->access$602(Lcom/android/contacts/ViewContactActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 890
    iget-object v1, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/contacts/ViewContactActivity;->mHasEntities:Z
    invoke-static {v1, v2}, Lcom/android/contacts/ViewContactActivity;->access$702(Lcom/android/contacts/ViewContactActivity;Z)Z

    .line 891
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    iget-object v0, p0, Lcom/android/contacts/ViewContactActivity$6;->this$0:Lcom/android/contacts/ViewContactActivity;

    #calls: Lcom/android/contacts/ViewContactActivity;->considerBindData()V
    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->access$800(Lcom/android/contacts/ViewContactActivity;)V

    goto :goto_0
.end method
