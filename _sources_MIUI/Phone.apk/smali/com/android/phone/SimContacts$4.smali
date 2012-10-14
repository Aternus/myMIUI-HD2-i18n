.class Lcom/android/phone/SimContacts$4;
.super Ljava/lang/Object;
.source "SimContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimContacts;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimContacts;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/SimContacts;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iput p2, p0, Lcom/android/phone/SimContacts$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 581
    packed-switch p2, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 583
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget v1, p0, Lcom/android/phone/SimContacts$4;->val$position:I

    #calls: Lcom/android/phone/SimContacts;->importOneSimContact(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$1200(Lcom/android/phone/SimContacts;I)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    const v1, 0x7f0c01c6

    invoke-virtual {v0, v1}, Lcom/android/phone/SimContacts;->showToast(I)V

    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget v1, p0, Lcom/android/phone/SimContacts$4;->val$position:I

    const/4 v2, 0x1

    #calls: Lcom/android/phone/SimContacts;->deleteSimContact(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SimContacts;->access$1300(Lcom/android/phone/SimContacts;IZ)V

    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget v1, p0, Lcom/android/phone/SimContacts$4;->val$position:I

    #calls: Lcom/android/phone/SimContacts;->callOrSmsSimContact(II)V
    invoke-static {v0, v1, p2}, Lcom/android/phone/SimContacts;->access$1400(Lcom/android/phone/SimContacts;II)V

    goto :goto_0

    .line 594
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SimContacts$4;->this$0:Lcom/android/phone/SimContacts;

    iget v1, p0, Lcom/android/phone/SimContacts$4;->val$position:I

    #calls: Lcom/android/phone/SimContacts;->editSimContact(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SimContacts;->access$1500(Lcom/android/phone/SimContacts;I)V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
