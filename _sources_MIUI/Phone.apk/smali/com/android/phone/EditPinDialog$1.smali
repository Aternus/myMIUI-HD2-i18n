.class Lcom/android/phone/EditPinDialog$1;
.super Ljava/lang/Object;
.source "EditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/EditPinDialog$Mode;Lcom/android/phone/EditPinDialog$DialogClosedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EditPinDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/EditPinDialog$1;->this$0:Lcom/android/phone/EditPinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/EditPinDialog$1;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/EditPinDialog;->access$000(Lcom/android/phone/EditPinDialog;)Lcom/android/phone/EditPinDialog$DialogClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/EditPinDialog$1;->this$0:Lcom/android/phone/EditPinDialog;

    #getter for: Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/EditPinDialog;->access$000(Lcom/android/phone/EditPinDialog;)Lcom/android/phone/EditPinDialog$DialogClosedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditPinDialog$1;->this$0:Lcom/android/phone/EditPinDialog;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/EditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/EditPinDialog;Z)V

    .line 94
    :cond_0
    return-void
.end method
