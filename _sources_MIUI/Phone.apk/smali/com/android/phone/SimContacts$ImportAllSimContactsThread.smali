.class Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
.super Ljava/lang/Thread;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportAllSimContactsThread"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/phone/SimContacts;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimContacts;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    .line 132
    const-string v0, "ImportAllSimContactsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 133
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 164
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    .line 169
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 171
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const-string v0, "SimContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v0, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 138
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->mCanceled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    iget-object v0, v0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #calls: Lcom/android/phone/SimContacts;->actuallyImportOneSimContactToDefaultAccounts()V
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$000(Lcom/android/phone/SimContacts;)V

    .line 140
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$100(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$102(Lcom/android/phone/SimContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    new-instance v1, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;-><init>(Lcom/android/phone/SimContacts$ImportAllSimContactsThread;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContacts;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_3
    return-void
.end method
