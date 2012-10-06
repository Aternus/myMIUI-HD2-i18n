.class Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;
.super Landroid/os/Handler;
.source "NewAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/NewAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x7f070021

    const/4 v3, 0x1

    .line 380
    iget v2, p1, Landroid/os/Message;->arg1:I

    sub-int v0, v2, v3

    .line 381
    .local v0, count:I
    if-nez v0, :cond_0

    .line 382
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 383
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v4, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 387
    .local v1, mess:Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 388
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    #getter for: Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->access$500(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
