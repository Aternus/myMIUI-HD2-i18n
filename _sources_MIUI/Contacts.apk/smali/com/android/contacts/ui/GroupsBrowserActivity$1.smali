.class Lcom/android/contacts/ui/GroupsBrowserActivity$1;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$1;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 143
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    .line 144
    .local v4, mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_1

    .line 145
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    :goto_0
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/GroupList;->clear()V

    .line 152
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    .line 153
    .local v1, groups:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    iget-object v5, v1, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 154
    .local v0, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/contacts/model/GroupList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    .end local v0           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v1           #groups:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$1;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method
