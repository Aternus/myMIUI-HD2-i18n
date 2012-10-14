.class Lcom/android/contacts/ContactsListActivity$7$1;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity$7;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ContactsListActivity$7;

.field final synthetic val$ids:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity$7;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iput-object p2, p0, Lcom/android/contacts/ContactsListActivity$7$1;->val$ids:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1203
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v1, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x28c0003a

    if-ne v1, v2, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/model/GroupDelta;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity$7$1;->val$ids:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v3, v3, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/contacts/ContactsListActivity;->access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/GroupDelta;->removeGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;)V

    .line 1205
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1241
    :goto_0
    return-void

    .line 1207
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1208
    .local v0, progress:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1209
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1210
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->this$1:Lcom/android/contacts/ContactsListActivity$7;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity$7;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget v1, v1, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x8a00004

    if-ne v1, v2, :cond_1

    const v1, 0x7f0b01cc

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1213
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1214
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$7$1;->val$ids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1215
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1218
    new-instance v1, Lcom/android/contacts/ContactsListActivity$7$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/ContactsListActivity$7$1$1;-><init>(Lcom/android/contacts/ContactsListActivity$7$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$7$1$1;->start()V

    goto :goto_0

    .line 1210
    :cond_1
    const v1, 0x7f0b01cd

    goto :goto_1
.end method
