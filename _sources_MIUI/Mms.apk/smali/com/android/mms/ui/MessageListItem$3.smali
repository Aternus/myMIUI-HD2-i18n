.class Lcom/android/mms/ui/MessageListItem$3;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindGroupMessageFailedItems(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem$FailedItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$3;->val$failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    if-eqz p2, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$3;->val$failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem$FailedItem;->messageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageItem;->addToResend(Landroid/net/Uri;)V

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->resendMsgInGroup()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 393
    .local v0, resendSize:I
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09011a

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mGroupSendFailedButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    if-lez v0, :cond_1

    move v2, v7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    return-void

    .line 390
    .end local v0           #resendSize:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$3;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$3;->val$failedItem:Lcom/android/mms/ui/MessageItem$FailedItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem$FailedItem;->messageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageItem;->removeFromResend(Landroid/net/Uri;)V

    goto :goto_0

    .restart local v0       #resendSize:I
    :cond_1
    move v2, v6

    .line 394
    goto :goto_1
.end method
