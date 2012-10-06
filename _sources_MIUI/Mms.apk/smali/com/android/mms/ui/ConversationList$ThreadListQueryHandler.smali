.class final Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 724
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 725
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 788
    packed-switch p1, :pswitch_data_0

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 791
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 797
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$000(Lcom/android/mms/ui/ConversationList;)V

    .line 802
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$900()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->access$900()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 804
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$902(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 729
    sparse-switch p1, :sswitch_data_0

    .line 782
    const-string v6, "ConversationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onQueryComplete called with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 731
    .restart local p2
    :sswitch_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 732
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1100(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/EditableListView;->setVisibility(I)V

    .line 738
    :goto_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$500(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 739
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList;->access$1200(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6, v10}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 742
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1300(Lcom/android/mms/ui/ConversationList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 743
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #setter for: Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z
    invoke-static {v6, v10}, Lcom/android/mms/ui/ConversationList;->access$1302(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 744
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->markAllConversationsAsSeen(Landroid/content/Context;)V

    .line 748
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v6

    const/16 v7, 0x70c

    invoke-static {v6, v7}, Lcom/android/mms/data/Conversation;->asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/view/View;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1100(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/EditableListView;->setVisibility(I)V

    goto :goto_1

    .line 754
    :sswitch_1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 755
    .local v3, threadId:J
    new-instance v6, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v6, v3, v4, v7, v8}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    move v7, v11

    :goto_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v11

    :goto_3
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    move v7, v10

    goto :goto_2

    :cond_3
    move v8, v10

    goto :goto_3

    .line 761
    .end local v3           #threadId:J
    .restart local p2
    :sswitch_2
    move-object v0, p2

    check-cast v0, Ljava/util/HashSet;

    move-object v5, v0

    .line 762
    .local v5, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v6, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v6, v7, v5, v8, v9}, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v7

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_4

    move v8, v11

    :goto_4
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/ui/ConversationList;->confirmBatchDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;IZLandroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    move v8, v10

    goto :goto_4

    .line 769
    .end local v5           #threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :sswitch_3
    if-eqz p3, :cond_0

    .line 770
    const/4 v6, -0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 771
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 772
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 773
    .local v1, thread:J
    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation$TimedThreads;->setHasTimedMessage(J)V

    goto :goto_5

    .line 775
    .end local v1           #thread:J
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1404(Lcom/android/mms/ui/ConversationList;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 776
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$500(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a5 -> :sswitch_0
        0x6a6 -> :sswitch_3
        0x6a7 -> :sswitch_3
        0x70a -> :sswitch_1
        0x70b -> :sswitch_2
    .end sparse-switch
.end method
