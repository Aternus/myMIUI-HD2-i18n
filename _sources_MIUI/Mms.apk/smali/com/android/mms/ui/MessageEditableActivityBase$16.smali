.class Lcom/android/mms/ui/MessageEditableActivityBase$16;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 967
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 978
    :goto_0
    return v0

    .line 972
    :cond_0
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->showSubjectEditor(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$16;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    move v0, v2

    .line 975
    goto :goto_0

    :cond_1
    move v0, v1

    .line 978
    goto :goto_0
.end method
