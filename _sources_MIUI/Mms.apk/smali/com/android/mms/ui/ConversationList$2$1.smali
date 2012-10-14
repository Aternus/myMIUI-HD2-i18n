.class Lcom/android/mms/ui/ConversationList$2$1;
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
    .line 201
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2$1;->this$1:Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$2$1;->this$1:Lcom/android/mms/ui/ConversationList$2;

    iget-object v1, v1, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const v1, 0x7f0900ff

    new-instance v2, Lcom/android/mms/ui/ConversationList$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationList$2$1$1;-><init>(Lcom/android/mms/ui/ConversationList$2$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    const v1, 0x7f090100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 218
    return-void
.end method
