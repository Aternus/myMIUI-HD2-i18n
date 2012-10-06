.class Lcom/android/mms/ui/ConversationBase$4;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 8
    .parameter "v"
    .parameter "checkable"

    .prologue
    .line 350
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v1

    .line 352
    .local v1, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationBase;->access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, checkedItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/MessageItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 359
    new-instance v4, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {v4, v6, v0}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;-><init>(Lcom/android/mms/ui/ConversationBase;Ljava/util/List;)V

    .line 360
    .local v4, listener:Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    const/4 v2, 0x0

    .line 361
    .local v2, hasLockedMessages:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/MessageItem;

    .line 362
    .local v5, mi:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 363
    const/4 v2, 0x1

    .line 368
    .end local v5           #mi:Lcom/android/mms/ui/MessageItem;
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase$4;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->count()I

    move-result v7

    #calls: Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    invoke-static {v6, v4, v7, v2}, Lcom/android/mms/ui/ConversationBase;->access$200(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    goto :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0031
        :pswitch_0
    .end packed-switch
.end method
