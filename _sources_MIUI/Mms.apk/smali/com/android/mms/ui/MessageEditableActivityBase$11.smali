.class Lcom/android/mms/ui/MessageEditableActivityBase$11;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onAttachmentChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->drawBottomPanel()V

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->updateSendButtonState()V

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v1, v1, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 674
    return-void
.end method
