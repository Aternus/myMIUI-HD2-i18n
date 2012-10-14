.class Lcom/android/mms/ui/NewMessageActivity$8;
.super Landroid/database/DataSetObserver;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initResourceRefs()V
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
    .line 292
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->resetDismissSuggestionListTimer()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$800(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$8;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->cancelDismissSuggestionListTimer()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$900(Lcom/android/mms/ui/NewMessageActivity;)V

    goto :goto_0
.end method
