.class Lcom/miui/player/ui/CreatorDialog$2;
.super Ljava/lang/Object;
.source "CreatorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 94
    iput-object p1, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 101
    .local v0, confirm:Z
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mInput:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/miui/player/ui/CreatorDialog;->access$000(Lcom/miui/player/ui/CreatorDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mBuilder:Lcom/miui/player/ui/CreatorDialog$DialogBuilder;
    invoke-static {v3}, Lcom/miui/player/ui/CreatorDialog;->access$100(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/ui/CreatorDialog$DialogBuilder;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/miui/player/ui/CreatorDialog$DialogBuilder;->create(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    const/4 v0, 0x1

    .line 107
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v3}, Lcom/miui/player/ui/CreatorDialog;->access$300(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mListener:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v3}, Lcom/miui/player/ui/CreatorDialog;->access$300(Lcom/miui/player/ui/CreatorDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/CreatorDialog$2;->this$0:Lcom/miui/player/ui/CreatorDialog;

    #getter for: Lcom/miui/player/ui/CreatorDialog;->mRequestCode:I
    invoke-static {v4}, Lcom/miui/player/ui/CreatorDialog;->access$400(Lcom/miui/player/ui/CreatorDialog;)I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/miui/player/MusicUtils$OnDialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 110
    :cond_1
    return-void
.end method
