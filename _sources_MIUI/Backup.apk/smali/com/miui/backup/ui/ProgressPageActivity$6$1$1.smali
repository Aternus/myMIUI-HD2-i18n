.class Lcom/miui/backup/ui/ProgressPageActivity$6$1$1;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/backup/ui/ProgressPageActivity$6$1;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity$6$1;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$6$1$1;->this$2:Lcom/miui/backup/ui/ProgressPageActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6$1$1;->this$2:Lcom/miui/backup/ui/ProgressPageActivity$6$1;

    iget-object v0, v0, Lcom/miui/backup/ui/ProgressPageActivity$6$1;->this$1:Lcom/miui/backup/ui/ProgressPageActivity$6;

    iget-object v0, v0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 409
    return-void
.end method
