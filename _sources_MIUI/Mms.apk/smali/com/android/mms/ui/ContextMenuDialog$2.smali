.class Lcom/android/mms/ui/ContextMenuDialog$2;
.super Ljava/lang/Object;
.source "ContextMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ContextMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ContextMenuDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ContextMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/ContextMenuDialog$2;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/ContextMenuDialog$2;->this$0:Lcom/android/mms/ui/ContextMenuDialog;

    #getter for: Lcom/android/mms/ui/ContextMenuDialog;->mMenuRunnables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/ContextMenuDialog;->access$200(Lcom/android/mms/ui/ContextMenuDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 91
    return-void
.end method
