.class Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 679
    const/16 v0, 0x709

    .line 680
    .local v0, token:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mDeleteLockedMessages:Z

    invoke-static {v1, v0, v2}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V

    .line 682
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 688
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mDeleteLockedMessages:Z

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJ)V

    .line 686
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->access$800(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto :goto_0
.end method
