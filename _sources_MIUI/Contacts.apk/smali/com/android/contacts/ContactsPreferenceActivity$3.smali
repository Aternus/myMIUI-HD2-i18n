.class Lcom/android/contacts/ContactsPreferenceActivity$3;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity;->showMergeContactsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$3;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 327
    new-instance v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;

    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$3;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    iget-object v2, p0, Lcom/android/contacts/ContactsPreferenceActivity$3;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;Lcom/android/contacts/ContactsPreferenceActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method
