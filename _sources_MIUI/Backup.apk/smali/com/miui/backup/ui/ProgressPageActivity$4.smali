.class Lcom/miui/backup/ui/ProgressPageActivity$4;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$4;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$4;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 201
    return-void
.end method
