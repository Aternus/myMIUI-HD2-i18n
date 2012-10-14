.class Lcom/android/contacts/ui/EditContactActivity$6;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/EditContactActivity;->createSplitDialog()Landroid/app/Dialog;
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
    .line 1757
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$6;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$6;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #getter for: Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$300(Lcom/android/contacts/ui/EditContactActivity;)Lcom/android/contacts/model/EntitySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/EntitySet;->splitRawContacts()V

    .line 1761
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$6;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->doSaveAction(I)Z

    .line 1762
    return-void
.end method
