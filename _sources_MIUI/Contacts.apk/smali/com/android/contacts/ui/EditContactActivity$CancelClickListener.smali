.class Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/EditContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;-><init>(Lcom/android/contacts/ui/EditContactActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$CancelClickListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doRevertAction()Z
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$1000(Lcom/android/contacts/ui/EditContactActivity;)Z

    .line 844
    return-void
.end method
