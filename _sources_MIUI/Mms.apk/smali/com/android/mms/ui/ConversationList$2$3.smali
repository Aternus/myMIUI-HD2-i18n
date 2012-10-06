.class Lcom/android/mms/ui/ConversationList$2$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$2;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2$3;->this$1:Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$2$3;->this$1:Lcom/android/mms/ui/ConversationList$2;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)V

    .line 236
    return-void
.end method
