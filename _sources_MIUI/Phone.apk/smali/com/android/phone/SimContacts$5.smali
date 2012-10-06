.class Lcom/android/phone/SimContacts$5;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 630
    iput-object p1, p0, Lcom/android/phone/SimContacts$5;->this$0:Lcom/android/phone/SimContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 633
    new-instance v0, Lcom/android/phone/SimContacts$DeleteTask;

    iget-object v1, p0, Lcom/android/phone/SimContacts$5;->this$0:Lcom/android/phone/SimContacts;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SimContacts$DeleteTask;-><init>(Lcom/android/phone/SimContacts;Lcom/android/phone/SimContacts$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContacts$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    return-void
.end method
