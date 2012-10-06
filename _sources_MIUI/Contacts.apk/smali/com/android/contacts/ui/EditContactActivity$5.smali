.class Lcom/android/contacts/ui/EditContactActivity$5;
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
    .line 1577
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1582
    packed-switch p2, :pswitch_data_0

    .line 1597
    :goto_0
    return-void

    .line 1584
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/16 v1, 0xbd7

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doTakePhoto(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1700(Lcom/android/contacts/ui/EditContactActivity;I)V

    goto :goto_0

    .line 1587
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doPickIncomingCallPhoto()V
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$2100(Lcom/android/contacts/ui/EditContactActivity;)V

    goto :goto_0

    .line 1590
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doEditIncomingCallPhoto()V
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$2200(Lcom/android/contacts/ui/EditContactActivity;)V

    goto :goto_0

    .line 1593
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$102(Lcom/android/contacts/ui/EditContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1594
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$5;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->bindCallIncoming()V
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$2300(Lcom/android/contacts/ui/EditContactActivity;)V

    goto :goto_0

    .line 1582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
