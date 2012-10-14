.class Lcom/android/contacts/ExportSimCardActivity$1;
.super Landroid/os/Handler;
.source "ExportSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ExportSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ExportSimCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ExportSimCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 263
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/ExportSimCardActivity$1$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/ExportSimCardActivity$1$2;-><init>(Lcom/android/contacts/ExportSimCardActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ExportSimCardActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/ExportSimCardActivity$1$1;-><init>(Lcom/android/contacts/ExportSimCardActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 275
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v2, 0x7f0b0162

    invoke-virtual {v1, v2}, Lcom/android/contacts/ExportSimCardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v2, 0x7f0b0099

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v5, 0x7f0b0160

    invoke-virtual {v4, v5}, Lcom/android/contacts/ExportSimCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ExportSimCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Lcom/android/contacts/ExportSimCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 235
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #setter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->access$902(Lcom/android/contacts/ExportSimCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 245
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v1, 0x7f0b0163

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ExportSimCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ExportSimCardActivity$1;->showAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 250
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #setter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->access$902(Lcom/android/contacts/ExportSimCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 251
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ExportSimCardActivity;->finish()V

    goto/16 :goto_0

    .line 255
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #getter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ExportSimCardActivity;->access$900(Lcom/android/contacts/ExportSimCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    #setter for: Lcom/android/contacts/ExportSimCardActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/contacts/ExportSimCardActivity;->access$902(Lcom/android/contacts/ExportSimCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 257
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    const v1, 0x7f0b0164

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ExportSimCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ExportSimCardActivity$1;->showAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
