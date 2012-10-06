.class Lcom/android/contacts/RecipientsActivity$4;
.super Ljava/lang/Object;
.source "RecipientsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 425
    iput-object p1, p0, Lcom/android/contacts/RecipientsActivity$4;->this$0:Lcom/android/contacts/RecipientsActivity;

    iput-object p2, p0, Lcom/android/contacts/RecipientsActivity$4;->val$recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/RecipientsActivity$4;->val$recipientMultiNumberListAdapter:Lcom/android/contacts/RecipientMultiNumberListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->toggleCheckedItem(I)Z

    move-result v0

    .line 429
    .local v0, checked:Z
    const v1, 0x7f0700e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 430
    if-eqz v0, :cond_0

    const v1, 0x7f020092

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 432
    return-void

    .line 430
    :cond_0
    const v1, 0x7f020093

    goto :goto_0
.end method
