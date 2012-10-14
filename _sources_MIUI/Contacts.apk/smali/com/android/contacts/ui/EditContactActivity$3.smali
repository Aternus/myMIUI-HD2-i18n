.class Lcom/android/contacts/ui/EditContactActivity$3;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/EditContactActivity;->doPickPhotoAction(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;

.field final synthetic val$rawContactId:J


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/EditContactActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iput-wide p2, p0, Lcom/android/contacts/ui/EditContactActivity$3;->val$rawContactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1526
    packed-switch p2, :pswitch_data_0

    .line 1546
    :goto_0
    return-void

    .line 1528
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/16 v1, 0xbd3

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doTakePhoto(I)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1700(Lcom/android/contacts/ui/EditContactActivity;I)V

    goto :goto_0

    .line 1531
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doPickPhotoFromGallery()V
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$1800(Lcom/android/contacts/ui/EditContactActivity;)V

    goto :goto_0

    .line 1534
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-wide v1, p0, Lcom/android/contacts/ui/EditContactActivity$3;->val$rawContactId:J

    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mRawContactIdRequestingPhoto:J
    invoke-static {v0, v1, v2}, Lcom/android/contacts/ui/EditContactActivity;->access$1902(Lcom/android/contacts/ui/EditContactActivity;J)J

    .line 1535
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const-class v2, Lcom/android/contacts/ui/PhotoTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1536
    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->DISPLAY_NAME_EXTRA:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-wide v3, p0, Lcom/android/contacts/ui/EditContactActivity$3;->val$rawContactId:J

    #calls: Lcom/android/contacts/ui/EditContactActivity;->findDisplayName(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/android/contacts/ui/EditContactActivity;->access$2000(Lcom/android/contacts/ui/EditContactActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/16 v2, 0xbcd

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/ui/EditContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1541
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$3;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mPhotoEditor:Lcom/android/contacts/ui/widget/PhotoEditorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
