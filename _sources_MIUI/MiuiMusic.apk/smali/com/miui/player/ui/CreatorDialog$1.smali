.class Lcom/miui/player/ui/CreatorDialog$1;
.super Ljava/lang/Object;
.source "CreatorDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/CreatorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/CreatorDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/CreatorDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/player/ui/CreatorDialog$1;->this$0:Lcom/miui/player/ui/CreatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 91
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 81
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/player/ui/CreatorDialog$1;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/miui/player/ui/CreatorDialog;->access$200(Lcom/miui/player/ui/CreatorDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/CreatorDialog$1;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    invoke-static {v1}, Lcom/miui/player/ui/CreatorDialog;->access$100(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/CreatorDialog$1;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/miui/player/ui/CreatorDialog;->access$000(Lcom/miui/player/ui/CreatorDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/player/ui/CreatorDialog$DialogBuilder;->getConfirm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
