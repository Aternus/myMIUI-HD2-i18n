.class Lcom/android/mms/ui/NewMessageActivity$14;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$c:Lcom/android/mms/data/Contact;

.field final synthetic val$origNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$14;->val$c:Lcom/android/mms/data/Contact;

    iput-object p3, p0, Lcom/android/mms/ui/NewMessageActivity$14;->val$origNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$600(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RowLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RowLayout;->removeView(Landroid/view/View;)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1700(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$14;->val$c:Lcom/android/mms/data/Contact;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1900(Lcom/android/mms/ui/NewMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$14;->val$origNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$2000(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 630
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1700(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$14;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 634
    :cond_0
    return-void
.end method
