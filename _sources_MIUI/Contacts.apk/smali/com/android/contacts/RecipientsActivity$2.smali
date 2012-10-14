.class Lcom/android/contacts/RecipientsActivity$2;
.super Ljava/lang/Object;
.source "RecipientsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/RecipientsActivity;->showRecipientMutilNumberDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/RecipientsActivity;

.field final synthetic val$recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecipientsActivity;Lcom/android/contacts/RecipientMultiNumberListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/contacts/RecipientsActivity$2;->this$0:Lcom/android/contacts/RecipientsActivity;

    iput-object p2, p0, Lcom/android/contacts/RecipientsActivity$2;->val$recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 406
    iget-object v3, p0, Lcom/android/contacts/RecipientsActivity$2;->val$recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->getUnCheckedItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 408
    .local v2, unCheckedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    .line 409
    .local v1, item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    iget-object v3, p0, Lcom/android/contacts/RecipientsActivity$2;->this$0:Lcom/android/contacts/RecipientsActivity;

    #getter for: Lcom/android/contacts/RecipientsActivity;->mSelectedRecipients:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/contacts/RecipientsActivity;->access$000(Lcom/android/contacts/RecipientsActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    .end local v1           #item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/RecipientsActivity$2;->this$0:Lcom/android/contacts/RecipientsActivity;

    #calls: Lcom/android/contacts/RecipientsActivity;->returnResult()V
    invoke-static {v3}, Lcom/android/contacts/RecipientsActivity;->access$100(Lcom/android/contacts/RecipientsActivity;)V

    .line 412
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 413
    return-void
.end method
