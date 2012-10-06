.class Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 711
    const/16 v0, 0x709

    .line 712
    .local v0, token:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mDeleteLockedMessages:Z

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->mThreadIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->access$1000(Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/data/Conversation;->startBatchDelete(Landroid/content/AsyncQueryHandler;IZLjava/util/HashSet;)V

    .line 714
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 715
    return-void
.end method
