.class Lcom/android/gallery/ui/TextInputDialog$1;
.super Ljava/lang/Object;
.source "TextInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/TextInputDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/TextInputDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/gallery/ui/TextInputDialog$1;->this$0:Lcom/android/gallery/ui/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery/ui/TextInputDialog$1;->this$0:Lcom/android/gallery/ui/TextInputDialog;

    #getter for: Lcom/android/gallery/ui/TextInputDialog;->mMeta:Lcom/android/gallery/data/BaseMeta;
    invoke-static {v0}, Lcom/android/gallery/ui/TextInputDialog;->access$100(Lcom/android/gallery/ui/TextInputDialog;)Lcom/android/gallery/data/BaseMeta;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/TextInputDialog$1;->this$0:Lcom/android/gallery/ui/TextInputDialog;

    invoke-virtual {v1}, Lcom/android/gallery/ui/TextInputDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery/ui/TextInputDialog$1;->this$0:Lcom/android/gallery/ui/TextInputDialog;

    #getter for: Lcom/android/gallery/ui/TextInputDialog;->editText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/gallery/ui/TextInputDialog;->access$000(Lcom/android/gallery/ui/TextInputDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/data/BaseMeta;->rename(Landroid/content/Context;Ljava/lang/String;)Z

    .line 31
    return-void
.end method
