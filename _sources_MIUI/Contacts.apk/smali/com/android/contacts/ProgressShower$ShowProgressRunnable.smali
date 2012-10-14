.class Lcom/android/contacts/ProgressShower$ShowProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressShower.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ProgressShower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowProgressRunnable"
.end annotation


# instance fields
.field private mContact:Landroid/pim/vcard/VCardEntry;

.field final synthetic this$0:Lcom/android/contacts/ProgressShower;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ProgressShower;Landroid/pim/vcard/VCardEntry;)V
    .locals 0
    .parameter
    .parameter "contact"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/contacts/ProgressShower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->mContact:Landroid/pim/vcard/VCardEntry;

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/contacts/ProgressShower;

    #getter for: Lcom/android/contacts/ProgressShower;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ProgressShower;->access$100(Lcom/android/contacts/ProgressShower;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/contacts/ProgressShower;

    #getter for: Lcom/android/contacts/ProgressShower;->mProgressMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ProgressShower;->access$000(Lcom/android/contacts/ProgressShower;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->mContact:Landroid/pim/vcard/VCardEntry;

    invoke-virtual {v2}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/android/contacts/ProgressShower$ShowProgressRunnable;->this$0:Lcom/android/contacts/ProgressShower;

    #getter for: Lcom/android/contacts/ProgressShower;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ProgressShower;->access$100(Lcom/android/contacts/ProgressShower;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 47
    return-void
.end method
