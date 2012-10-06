.class Lcom/android/mms/ui/ConversationList$2$1$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ConversationList$2$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2$1$1;->this$2:Lcom/android/mms/ui/ConversationList$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$2$1$1;->this$2:Lcom/android/mms/ui/ConversationList$2$1;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2$1;->this$1:Lcom/android/mms/ui/ConversationList$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    const-class v2, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$2$1$1;->this$2:Lcom/android/mms/ui/ConversationList$2$1;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2$1;->this$1:Lcom/android/mms/ui/ConversationList$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method
