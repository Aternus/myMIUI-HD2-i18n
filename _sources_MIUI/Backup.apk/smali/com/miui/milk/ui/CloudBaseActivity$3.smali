.class Lcom/miui/milk/ui/CloudBaseActivity$3;
.super Ljava/lang/Object;
.source "CloudBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/CloudBaseActivity;->refreshUI(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseActivity$3;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity$3;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    invoke-virtual {v1}, Lcom/miui/milk/ui/CloudBaseActivity;->retryComputeBackupInfo()Z

    move-result v0

    .line 110
    .local v0, canretry:Z
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity$3;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/miui/milk/ui/CloudBaseActivity;->mNetWorkErrorDialog:Landroid/app/Dialog;

    .line 112
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBaseActivity$3;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    iget-object v1, v1, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/milk/ui/CloudBaseActivity$3;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    iget-object v2, v2, Lcom/miui/milk/ui/CloudBaseActivity;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_0
    return-void
.end method
