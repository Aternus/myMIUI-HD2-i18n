.class Lcom/android/contacts/ContactsListActivity$3;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity;->setupAddToGroupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$300(Lcom/android/contacts/ContactsListActivity;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/contacts/ContactsListActivity;->access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/GroupDelta;->addGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;)V

    .line 1089
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity;->setResult(I)V

    .line 1090
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$3;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 1091
    return-void
.end method
