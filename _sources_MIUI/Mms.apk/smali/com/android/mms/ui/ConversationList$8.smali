.class Lcom/android/mms/ui/ConversationList$8;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "v"
    .parameter "checkable"

    .prologue
    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 823
    :pswitch_0
    const/4 v0, 0x0

    .line 824
    .local v0, hashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0031
        :pswitch_0
    .end packed-switch
.end method
