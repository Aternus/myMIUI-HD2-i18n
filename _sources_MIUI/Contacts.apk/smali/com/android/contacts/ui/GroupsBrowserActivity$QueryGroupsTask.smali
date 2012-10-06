.class Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "GroupsBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryGroupsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/model/GroupList;",
        "Lcom/android/contacts/ui/GroupsBrowserActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    .line 936
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 937
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/contacts/ui/GroupsBrowserActivity;[Ljava/lang/Void;)Lcom/android/contacts/model/GroupList;
    .locals 1
    .parameter "target"
    .parameter "params"

    .prologue
    .line 942
    new-instance v0, Lcom/android/contacts/model/GroupList;

    invoke-direct {v0, p1}, Lcom/android/contacts/model/GroupList;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 933
    check-cast p1, Lcom/android/contacts/ui/GroupsBrowserActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->doInBackground(Lcom/android/contacts/ui/GroupsBrowserActivity;[Ljava/lang/Void;)Lcom/android/contacts/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/model/GroupList;)V
    .locals 11
    .parameter "target"
    .parameter "result"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 948
    invoke-static {p2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$102(Lcom/android/contacts/model/GroupList;)Lcom/android/contacts/model/GroupList;

    .line 951
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 952
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/GroupList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/GroupDelta;

    .line 953
    .local v3, mGroupDelta:Lcom/android/contacts/model/GroupDelta;
    const/4 v0, 0x0

    .line 954
    .local v0, groupExist:Z
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    .line 955
    .local v4, mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 957
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    const/4 v0, 0x1

    .line 963
    .end local v4           #mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    :cond_2
    if-nez v0, :cond_0

    .line 964
    new-instance v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$1;)V

    .line 965
    .restart local v4       #mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    iput-object v3, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 966
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    iget-object v5, v4, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 972
    .end local v0           #groupExist:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mGroupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v4           #mergedGroup:Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v5

    if-nez v5, :cond_4

    .line 973
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    new-instance v6, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    iget-object v7, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iget-object v8, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {v6, v7, v8}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v5, v6}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$202(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    .line 974
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iget-object v6, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v6}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/ui/GroupsBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 977
    :cond_4
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/GroupList;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 978
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$2100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 979
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$2200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 989
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 990
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 992
    :cond_5
    return-void

    .line 981
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mNewGroupView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$2100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mGroupEmpty:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$2200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 933
    check-cast p1, Lcom/android/contacts/ui/GroupsBrowserActivity;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/GroupList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->onPostExecute(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/model/GroupList;)V

    return-void
.end method
