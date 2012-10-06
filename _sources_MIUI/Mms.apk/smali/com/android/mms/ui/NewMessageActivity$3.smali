.class Lcom/android/mms/ui/NewMessageActivity$3;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$3;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$3;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$3;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->access$202(Lcom/android/mms/ui/NewMessageActivity;Z)Z

    .line 221
    return-void
.end method
