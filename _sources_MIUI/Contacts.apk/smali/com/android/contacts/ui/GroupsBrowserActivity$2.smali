.class Lcom/android/contacts/ui/GroupsBrowserActivity$2;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$2;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 229
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$2;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->isAddingGroup()Z
    invoke-static {v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$300(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$2;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #setter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mIsAddingGroup:Z
    invoke-static {v0, v2}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$402(Lcom/android/contacts/ui/GroupsBrowserActivity;Z)Z

    .line 233
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$2;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->chooseAccountForGroupAdding()V
    invoke-static {v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$500(Lcom/android/contacts/ui/GroupsBrowserActivity;)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
