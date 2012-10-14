.class Lcom/android/contacts/ContactsPreferenceActivity$4$1;
.super Landroid/os/AsyncTaskWithProgress;
.source "ContactsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTaskWithProgress",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ContactsPreferenceActivity$4;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity$4;Landroid/content/Context;IIZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$4$1;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$4;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/AsyncTaskWithProgress;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsPreferenceActivity$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$4$1;->this$1:Lcom/android/contacts/ContactsPreferenceActivity$4;

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$4;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$SmartDialer;->CONTENT_REBUILDT9_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 618
    return-object v2
.end method
