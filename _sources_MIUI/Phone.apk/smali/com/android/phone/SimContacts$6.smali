.class Lcom/android/phone/SimContacts$6;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->importAllSimContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 744
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->simCardHash:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$1700(Lcom/android/phone/SimContacts;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 745
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 747
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    const v4, 0x7f0c0162

    invoke-virtual {v3, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    const v4, 0x7f0c0163

    invoke-virtual {v3, v4}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {v1, v3}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 752
    .local v1, thread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 753
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 756
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 757
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    const v6, 0x7f0c0023

    invoke-virtual {v5, v6}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 759
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 760
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    iget-object v3, v3, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 761
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    iget-object v4, v4, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 763
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 765
    iget-object v3, p0, Lcom/android/phone/SimContacts$6;->this$0:Lcom/android/phone/SimContacts;

    #calls: Lcom/android/phone/SimContacts;->buildResultDialog()V
    invoke-static {v3}, Lcom/android/phone/SimContacts;->access$1800(Lcom/android/phone/SimContacts;)V

    .line 766
    invoke-virtual {v1}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->start()V

    .line 767
    return-void
.end method
