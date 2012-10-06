.class Lcom/android/contacts/RecipientsActivity$3;
.super Ljava/lang/Object;
.source "RecipientsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/RecipientsActivity;->showRecipientMutilNumberDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/RecipientsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecipientsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/contacts/RecipientsActivity$3;->this$0:Lcom/android/contacts/RecipientsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 421
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 422
    return-void
.end method
