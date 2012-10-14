.class Lcom/miui/backup/ui/LocalBackupMain$1;
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
    .line 193
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$1;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 196
    return-void
.end method
