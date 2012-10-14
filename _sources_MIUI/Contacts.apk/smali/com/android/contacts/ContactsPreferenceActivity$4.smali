.class Lcom/android/contacts/ContactsPreferenceActivity$4;
.super Ljava/lang/Object;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsPreferenceActivity;->showRebuildT9IndexDialog()V
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
    .line 606
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$4;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 610
    new-instance v0, Lcom/android/contacts/ContactsPreferenceActivity$4$1;

    iget-object v2, p0, Lcom/android/contacts/ContactsPreferenceActivity$4;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    const v4, 0x7f0b01c4

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ContactsPreferenceActivity$4$1;-><init>(Lcom/android/contacts/ContactsPreferenceActivity$4;Landroid/content/Context;IIZ)V

    .line 621
    .local v0, task:Landroid/os/AsyncTaskWithProgress;,"Landroid/os/AsyncTaskWithProgress<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 622
    return-void
.end method
