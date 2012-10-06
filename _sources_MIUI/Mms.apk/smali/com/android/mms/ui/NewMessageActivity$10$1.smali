.class Lcom/android/mms/ui/NewMessageActivity$10$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$10;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$10;

.field final synthetic val$c:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$10;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$10$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$10;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$10$1;->val$c:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$10$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$10;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity$10;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$10$1;->val$c:Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->access$1300(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$10$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$10;

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity$10;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #calls: Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$1400(Lcom/android/mms/ui/NewMessageActivity;)V

    .line 362
    return-void
.end method
