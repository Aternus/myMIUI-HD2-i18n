.class Lcom/android/contacts/ContactsPreferenceActivity$2;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity;->displayImportExportDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsPreferenceActivity;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    iput-object p2, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    .line 217
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    sparse-switch v0, :sswitch_data_0

    .line 244
    const-string v1, "ContactsPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 220
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    const-string v1, "android.intent.action.CLOUD_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "cloud_restore_type"

    const-string v2, "ADDRESSBOOK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity;->handleImportRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 233
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const v3, 0x7f0b007c

    if-ne v0, v3, :cond_0

    const-class v0, Lcom/android/contacts/vcard/ExportVCardActivity;

    :goto_1
    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-virtual {v1, v2}, Lcom/android/contacts/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_0
    const-class v0, Lcom/android/contacts/ExportSimCardActivity;

    goto :goto_1

    .line 240
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$2;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #calls: Lcom/android/contacts/ContactsPreferenceActivity;->doShareVisibleContacts()V
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$000(Lcom/android/contacts/ContactsPreferenceActivity;)V

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b007a -> :sswitch_1
        0x7f0b007b -> :sswitch_1
        0x7f0b007c -> :sswitch_2
        0x7f0b0080 -> :sswitch_3
        0x7f0b0120 -> :sswitch_1
        0x7f0b015d -> :sswitch_0
        0x7f0b0161 -> :sswitch_2
    .end sparse-switch
.end method
