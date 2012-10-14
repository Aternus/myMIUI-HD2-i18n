.class Lcom/android/phone/SimContacts$DeleteTask;
.super Landroid/os/AsyncTask;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method private constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/android/phone/SimContacts$DeleteTask;-><init>(Lcom/android/phone/SimContacts;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 645
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContacts$DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 671
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    iget-object v1, v1, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/SimContacts$DeleteTask;->mCanceled:Z

    if-nez v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #calls: Lcom/android/phone/SimContacts;->deleteOneSimContact(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/phone/SimContacts;->access$1100(Lcom/android/phone/SimContacts;IZ)V

    .line 673
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/phone/SimContacts$DeleteTask;->publishProgress([Ljava/lang/Object;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->mCanceled:Z

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts$DeleteTask;->cancel(Z)Z

    .line 692
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 645
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContacts$DeleteTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 682
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    invoke-virtual {v0}, Lcom/android/phone/SimContacts;->reQuery()V

    .line 685
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 686
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 651
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f0c01c7

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 652
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    const v2, 0x7f0c01c8

    invoke-virtual {v1, v2}, Lcom/android/phone/SimContacts;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    iget-object v1, v1, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 657
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 658
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 659
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/phone/SimContacts$DeleteTask;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 666
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 667
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 645
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SimContacts$DeleteTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
