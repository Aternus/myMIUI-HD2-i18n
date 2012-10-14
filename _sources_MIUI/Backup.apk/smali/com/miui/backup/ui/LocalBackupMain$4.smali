.class Lcom/miui/backup/ui/LocalBackupMain$4;
.super Ljava/lang/Object;
.source "LocalBackupMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/LocalBackupMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupMain;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/LocalBackupMain;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$4;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 206
    new-instance v0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupMain$4;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method
