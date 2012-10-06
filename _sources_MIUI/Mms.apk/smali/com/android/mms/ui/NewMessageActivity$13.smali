.class Lcom/android/mms/ui/NewMessageActivity$13;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 598
    :goto_0
    return v0

    .line 590
    :cond_0
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 598
    goto :goto_0

    .line 592
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1700(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$13;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1700(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    #calls: Lcom/android/mms/ui/NewMessageActivity;->removeRecipient(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1800(Lcom/android/mms/ui/NewMessageActivity;I)V

    move v0, v2

    .line 594
    goto :goto_0

    :cond_1
    move v0, v1

    .line 596
    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
