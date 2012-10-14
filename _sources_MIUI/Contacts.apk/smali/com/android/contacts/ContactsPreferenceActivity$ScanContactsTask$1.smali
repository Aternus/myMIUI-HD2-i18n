.class Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;Lcom/android/contacts/ContactsPreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

.field final synthetic val$this$0:Lcom/android/contacts/ContactsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iput-object p2, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;->val$this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->cancel(Z)Z

    .line 401
    return-void
.end method
