.class Lcom/android/mms/ui/NewMessageActivity$16;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 812
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "s"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 827
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, text:Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " \n\r\t,\uff0c;\uff1b"

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 831
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v6, v9, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 834
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 835
    .local v1, last:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 836
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 837
    .local v3, pos:I
    if-gez v3, :cond_2

    .line 838
    const/4 v3, 0x0

    .line 840
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 844
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v9

    if-ge v0, v6, :cond_4

    .line 845
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/mms/ui/NewMessageActivity;->access$1000(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 848
    .end local v0           #i:I
    .end local v1           #last:Ljava/lang/String;
    .end local v3           #pos:I
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/android/mms/ui/NewMessageActivity;->access$2100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 852
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 853
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 815
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$16;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageActivity;->onUserInteraction()V

    .line 823
    return-void
.end method
