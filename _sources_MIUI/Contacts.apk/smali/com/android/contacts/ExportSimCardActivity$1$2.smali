.class Lcom/android/contacts/ExportSimCardActivity$1$2;
.super Ljava/lang/Object;
.source "ExportSimCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ExportSimCardActivity$1;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ExportSimCardActivity$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/ExportSimCardActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/contacts/ExportSimCardActivity$1$2;->this$1:Lcom/android/contacts/ExportSimCardActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/contacts/ExportSimCardActivity$1$2;->this$1:Lcom/android/contacts/ExportSimCardActivity$1;

    iget-object v0, v0, Lcom/android/contacts/ExportSimCardActivity$1;->this$0:Lcom/android/contacts/ExportSimCardActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ExportSimCardActivity;->finish()V

    .line 269
    return-void
.end method
