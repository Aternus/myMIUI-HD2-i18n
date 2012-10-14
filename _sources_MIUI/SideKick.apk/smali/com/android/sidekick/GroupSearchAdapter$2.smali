.class Lcom/android/sidekick/GroupSearchAdapter$2;
.super Ljava/lang/Object;
.source "GroupSearchAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sidekick/GroupSearchAdapter;-><init>(Landroid/content/Context;Lcom/android/sidekick/GroupSearchAdapter$StatusChangeAsyncListener;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sidekick/GroupSearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/sidekick/GroupSearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    #getter for: Lcom/android/sidekick/GroupSearchAdapter;->mGroupCorpus:Lcom/android/sidekick/GroupCorpus;
    invoke-static {v1}, Lcom/android/sidekick/GroupSearchAdapter;->access$000(Lcom/android/sidekick/GroupSearchAdapter;)Lcom/android/sidekick/GroupCorpus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/sidekick/GroupCorpus;->inRecentMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 148
    .end local p2
    :goto_0
    return v1

    .line 142
    .restart local p2
    :cond_0
    instance-of v1, p2, Lcom/android/sidekick/ResultItem;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    invoke-virtual {v1}, Lcom/android/sidekick/GroupSearchAdapter;->tryLeaveDeleteMode()V

    .line 144
    iget-object v2, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    move-object v0, p2

    check-cast v0, Lcom/android/sidekick/ResultItem;

    move-object v1, v0

    iput-object v1, v2, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    .line 145
    iget-object v1, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    iget-object v1, v1, Lcom/android/sidekick/GroupSearchAdapter;->mCurrentDeleteItem:Lcom/android/sidekick/ResultItem;

    new-instance v2, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;

    iget-object v3, p0, Lcom/android/sidekick/GroupSearchAdapter$2;->this$0:Lcom/android/sidekick/GroupSearchAdapter;

    check-cast p2, Lcom/android/sidekick/ResultItem;

    .end local p2
    invoke-direct {v2, v3, p2, p4, p5}, Lcom/android/sidekick/GroupSearchAdapter$ItemOnConfirmDeleteListener;-><init>(Lcom/android/sidekick/GroupSearchAdapter;Lcom/android/sidekick/ResultItem;J)V

    invoke-virtual {v1, v2}, Lcom/android/sidekick/ResultItem;->enterDeleteMode(Lcom/android/sidekick/GroupSearchAdapter$OnConfirmDeleteListener;)V

    .line 148
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
