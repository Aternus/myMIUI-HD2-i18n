.class Lcom/miui/backup/ui/ProgressPageActivity$6$1;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity$6;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/backup/ui/ProgressPageActivity$6;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$6$1;->this$1:Lcom/miui/backup/ui/ProgressPageActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 402
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity$6$1;->this$1:Lcom/miui/backup/ui/ProgressPageActivity$6;

    iget-object v2, v2, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    new-instance v3, Lcom/miui/backup/ui/ProgressPageActivity$6$1$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/ProgressPageActivity$6$1$1;-><init>(Lcom/miui/backup/ui/ProgressPageActivity$6$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 411
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 412
    return-void
.end method
