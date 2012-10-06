.class Lcom/android/contacts/ui/GroupsBrowserActivity$8;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;->buildEditGroupNameDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

.field final synthetic val$groupName:Landroid/widget/EditText;

.field final synthetic val$mSelectedPosition:I


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iput-object p2, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->val$groupName:Landroid/widget/EditText;

    iput p3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->val$mSelectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 445
    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->val$groupName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V
    invoke-static {v3}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iget v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->val$mSelectedPosition:I

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->validateName(Ljava/lang/String;I)Z
    invoke-static {v3, v2, v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$700(Lcom/android/contacts/ui/GroupsBrowserActivity;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->val$mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;

    iget-object v3, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$MergedGroup;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 452
    .local v0, groupDelta:Lcom/android/contacts/model/GroupDelta;
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Lcom/android/contacts/model/GroupDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    .end local v0           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_1
    invoke-static {}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$100()Lcom/android/contacts/model/GroupList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/GroupList;->applyChanges()V

    .line 455
    new-instance v3, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;

    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    iget-object v5, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;-><init>(Lcom/android/contacts/ui/GroupsBrowserActivity;Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/contacts/ui/GroupsBrowserActivity$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 457
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$8;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->discardEditing()V
    invoke-static {v3}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$600(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    goto :goto_0
.end method
