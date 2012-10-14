.class Lcom/android/contacts/ui/GroupsBrowserActivity$5;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;->buildAddGroupDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

.field final synthetic val$groupName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iput-object p2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->val$groupName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->val$groupName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V
    invoke-static {v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    const/4 v2, -0x1

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->validateName(Ljava/lang/String;I)Z
    invoke-static {v1, v0, v2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$700(Lcom/android/contacts/ui/GroupsBrowserActivity;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$800(Lcom/android/contacts/ui/GroupsBrowserActivity;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/GroupList;->newGroups([Landroid/accounts/Account;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAdapter:Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;
    invoke-static {v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$200(Lcom/android/contacts/ui/GroupsBrowserActivity;)Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/ui/GroupsBrowserActivity$DisplayAdapter;->notifyDataSetChanged()V

    .line 409
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/GroupList;->applyChanges()V

    .line 410
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->finishAddingGroup()V
    invoke-static {v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$900(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    .line 411
    new-instance v1, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;

    iget-object v2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$5;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V
    invoke-static {v1}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    goto :goto_0
.end method
