.class Lcom/android/contacts/ui/EditContactActivity$4;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/EditContactActivity;->doPickCallIncomingPhotoAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$4;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1566
    packed-switch p2, :pswitch_data_0

    .line 1574
    :goto_0
    return-void

    .line 1568
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$4;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/16 v1, 0xbd7

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doTakePhoto(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1700(Lcom/android/contacts/ui/EditContactActivity;I)V

    goto :goto_0

    .line 1571
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$4;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doPickIncomingCallPhoto()V
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$2100(Lcom/android/contacts/ui/EditContactActivity;)V

    goto :goto_0

    .line 1566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
