.class Lcom/android/phone/SimContacts$2;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->deleteSimContact(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;

.field final synthetic val$position:I

.field final synthetic val$reQuery:Z


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iput p2, p0, Lcom/android/phone/SimContacts$2;->val$position:I

    iput-boolean p3, p0, Lcom/android/phone/SimContacts$2;->val$reQuery:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/phone/SimContacts$2;->this$0:Lcom/android/phone/SimContacts;

    iget v1, p0, Lcom/android/phone/SimContacts$2;->val$position:I

    iget-boolean v2, p0, Lcom/android/phone/SimContacts$2;->val$reQuery:Z

    #calls: Lcom/android/phone/SimContacts;->deleteOneSimContact(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SimContacts;->access$1100(Lcom/android/phone/SimContacts;IZ)V

    .line 473
    return-void
.end method
