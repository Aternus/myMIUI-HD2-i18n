.class Lcom/android/mms/ui/ConversationBase$3;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/widget/EditableListView$EditModeListener;


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
    .line 325
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->getToggledIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    #getter for: Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase;->access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 344
    :cond_0
    return-void
.end method

.method public onEnterEditMode()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->disableAttachmentPanel()V

    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationBase;->hideSoftKeyboard()V

    .line 332
    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$3;->this$0:Lcom/android/mms/ui/ConversationBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    return-void
.end method
