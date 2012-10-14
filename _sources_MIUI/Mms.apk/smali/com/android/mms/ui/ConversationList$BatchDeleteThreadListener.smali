.class Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;
.super Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchDeleteThreadListener"
.end annotation


# instance fields
.field private mThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter "handler"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 698
    .local p2, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 699
    invoke-direct {p0, p3, p4}, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;-><init>(Landroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    .line 700
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->mThreadIds:Ljava/util/HashSet;

    .line 701
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->mThreadIds:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mContext:Landroid/content/Context;

    const v3, 0x7f090164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$902(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->mThreadIds:Ljava/util/HashSet;

    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/HashSet;ILjava/lang/Runnable;)V

    .line 717
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 718
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 719
    return-void
.end method
