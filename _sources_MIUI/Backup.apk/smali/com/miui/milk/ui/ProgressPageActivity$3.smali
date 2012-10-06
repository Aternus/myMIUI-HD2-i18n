.class Lcom/miui/milk/ui/ProgressPageActivity$3;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ProgressPageActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->showDialog(I)V

    .line 179
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #getter for: Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100(Lcom/miui/milk/ui/ProgressPageActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$3;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #getter for: Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->access$100(Lcom/miui/milk/ui/ProgressPageActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->cancelService()V

    .line 182
    :cond_0
    return-void
.end method
