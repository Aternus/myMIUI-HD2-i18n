.class Lcom/android/phone/EditFdnContactScreen$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 299
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/EditFdnContactScreen$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditFdnContactScreen$1$1;-><init>(Lcom/android/phone/EditFdnContactScreen$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v1, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z
    invoke-static {v1}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/EditFdnContactScreen$Actions;->Insert:Lcom/android/phone/EditFdnContactScreen$Actions;

    :goto_1
    #calls: Lcom/android/phone/EditFdnContactScreen;->performActions(Lcom/android/phone/EditFdnContactScreen$Actions;)V
    invoke-static {v0, v1}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;Lcom/android/phone/EditFdnContactScreen$Actions;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/phone/EditFdnContactScreen$Actions;->Update:Lcom/android/phone/EditFdnContactScreen$Actions;

    goto :goto_1

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/EditFdnContactScreen;->finish()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x7f070061
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
