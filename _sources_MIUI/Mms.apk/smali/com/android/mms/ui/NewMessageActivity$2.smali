.class Lcom/android/mms/ui/NewMessageActivity$2;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnSoftInputStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initUserGuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$2;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$2;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoftInputStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 177
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$2;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$2$1;-><init>(Lcom/android/mms/ui/NewMessageActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    return-void
.end method
