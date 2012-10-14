.class Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts$ImportAllSimContactsThread;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;->this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;->this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    iget-object v0, v0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;->this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    iget-object v1, v1, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    const v2, 0x7f0c01f3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;->this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    iget-object v5, v5, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->adapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/android/phone/SimContacts;->access$300(Lcom/android/phone/SimContacts;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/SimContacts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread$1;->this$1:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    iget-object v0, v0, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->this$0:Lcom/android/phone/SimContacts;

    #getter for: Lcom/android/phone/SimContacts;->mResultDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/SimContacts;->access$200(Lcom/android/phone/SimContacts;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 156
    return-void
.end method
