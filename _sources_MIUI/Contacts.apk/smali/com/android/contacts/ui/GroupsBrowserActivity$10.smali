.class Lcom/android/contacts/ui/GroupsBrowserActivity$10;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 899
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$10;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 902
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$10;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1900(Lcom/android/contacts/ui/GroupsBrowserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v1, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    .line 903
    .local v1, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 904
    .local v0, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/GroupList;->removeGroup(Lcom/android/contacts/model/GroupDelta;)V

    goto :goto_0

    .line 906
    .end local v0           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_0
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$10;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1900(Lcom/android/contacts/ui/GroupsBrowserActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 907
    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$10;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v3}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 908
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/GroupList;->applyChanges()V

    .line 909
    return-void
.end method
