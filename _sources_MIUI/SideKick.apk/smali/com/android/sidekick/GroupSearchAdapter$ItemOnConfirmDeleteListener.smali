.class Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;
.super Ljava/lang/Object;
.source "GroupSearchAdapter.java"

# interfaces
.implements Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sidekick/GroupSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemOnConfirmDeleteListener"
.end annotation


# instance fields
.field private mItem:Lcom/android/sidekick/ResultItem;

.field private mItemId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/sidekick/GroupSearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupSearchAdapter;Lcom/android/sidekick/ResultItem;J)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "itemId"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->mItem:Lcom/android/sidekick/ResultItem;

    .line 97
    long-to-int v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->mItemId:Ljava/lang/Integer;

    .line 98
    return-void
.end method


# virtual methods
.method public confirmDelete(Z)V
    .locals 3
    .parameter "isDeleted"

    .prologue
    const/4 v2, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    #getter for: Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchAdapter;->access$000(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupCorpus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->mItemId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/sidekick/GroupCorpus;->deleteRecentItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v0}, Lcom/android/sidekick/GroupSearchAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->mItem:Lcom/android/sidekick/ResultItem;

    invoke-virtual {v0}, Lcom/android/sidekick/ResultItem;->leaveDeleteMode()V

    .line 105
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    #getter for: Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchAdapter;->access$000(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupCorpus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/sidekick/GroupCorpus;->getRecentCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    #getter for: Lcom/android/sidekick/GroupSearchAdapter;->mStatusListener:Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;
    invoke-static {v0}, Lcom/android/sidekick/GroupSearchAdapter;->access$100(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;->onEndQuery(II)V

    .line 110
    :cond_0
    return-void
.end method
