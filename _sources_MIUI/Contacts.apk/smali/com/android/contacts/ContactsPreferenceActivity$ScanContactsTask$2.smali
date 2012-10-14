.class Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->doInBackground(Lcom/android/contacts/ContactsPreferenceActivity;[Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iput-object p2, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iget-object v1, v1, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    const v2, 0x7f0b01ac

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->val$name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;->val$name:Ljava/lang/String;

    #calls: Lcom/android/contacts/ContactsPreferenceActivity;->notifyMergeContact(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity;->access$200(Lcom/android/contacts/ContactsPreferenceActivity;Ljava/lang/String;)V

    .line 439
    return-void
.end method
