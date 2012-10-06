.class Lcom/android/phone/EditPinDialog$2;
.super Landroid/os/Handler;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0x7f0c0119

    const v7, 0x7f0c0113

    const v4, 0x7f0c010a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$100(Lcom/android/phone/EditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 408
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->process()V
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$200(Lcom/android/phone/EditPinDialog;)V

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/phone/EditPinDialog;->access$302(Lcom/android/phone/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v3}, Lcom/android/phone/EditPinDialog;->show()V

    .line 413
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$100(Lcom/android/phone/EditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 417
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 418
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto :goto_0

    .line 424
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 425
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 426
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto :goto_0

    .line 432
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 433
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 434
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$600(Lcom/android/phone/EditPinDialog;)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isIccPin1Locked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 438
    :cond_3
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->showToast(I)V
    invoke-static {v3, v7}, Lcom/android/phone/EditPinDialog;->access$700(Lcom/android/phone/EditPinDialog;I)V

    .line 439
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 443
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 444
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    .line 446
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 447
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_4

    .line 448
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    sget-object v4, Lcom/android/phone/EditPinDialog$Mode;->PUK2:Lcom/android/phone/EditPinDialog$Mode;

    #setter for: Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;
    invoke-static {v3, v4}, Lcom/android/phone/EditPinDialog;->access$802(Lcom/android/phone/EditPinDialog;Lcom/android/phone/EditPinDialog$Mode;)Lcom/android/phone/EditPinDialog$Mode;

    .line 449
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$900(Lcom/android/phone/EditPinDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, newPin2:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    iget-object v4, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0120

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/EditPinDialog;->access$302(Lcom/android/phone/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v3}, Lcom/android/phone/EditPinDialog;->show()V

    .line 452
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$900(Lcom/android/phone/EditPinDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$1000(Lcom/android/phone/EditPinDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$100(Lcom/android/phone/EditPinDialog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 456
    .end local v2           #newPin2:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$600(Lcom/android/phone/EditPinDialog;)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isIccPin2Locked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 457
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 459
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c0128

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/EditPinDialog$2$1;

    invoke-direct {v5, p0}, Lcom/android/phone/EditPinDialog$2$1;-><init>(Lcom/android/phone/EditPinDialog$2;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 470
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    const v4, 0x7f0c011d

    #calls: Lcom/android/phone/EditPinDialog;->showToast(I)V
    invoke-static {v3, v4}, Lcom/android/phone/EditPinDialog;->access$700(Lcom/android/phone/EditPinDialog;I)V

    .line 471
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 475
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 476
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 477
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$600(Lcom/android/phone/EditPinDialog;)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0129

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 481
    :cond_7
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->showToast(I)V
    invoke-static {v3, v7}, Lcom/android/phone/EditPinDialog;->access$700(Lcom/android/phone/EditPinDialog;I)V

    .line 482
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 486
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #ar:Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 487
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 488
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$600(Lcom/android/phone/EditPinDialog;)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/EditPinDialog;->access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0118

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/EditPinDialog$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 492
    :cond_8
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    const v4, 0x7f0c011d

    #calls: Lcom/android/phone/EditPinDialog;->showToast(I)V
    invoke-static {v3, v4}, Lcom/android/phone/EditPinDialog;->access$700(Lcom/android/phone/EditPinDialog;I)V

    .line 493
    iget-object v3, p0, Lcom/android/phone/EditPinDialog$2;->this$0:Lcom/android/phone/EditPinDialog;

    #calls: Lcom/android/phone/EditPinDialog;->dismiss(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/EditPinDialog;->access$500(Lcom/android/phone/EditPinDialog;Z)V

    goto/16 :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
