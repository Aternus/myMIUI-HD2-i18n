.class Lcom/miui/milk/ui/ProgressPageActivity$2;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ProgressPageActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 84
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    const-class v2, Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "TASK_ID"

    iget-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    #getter for: Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J
    invoke-static {v2}, Lcom/miui/milk/ui/ProgressPageActivity;->access$000(Lcom/miui/milk/ui/ProgressPageActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 89
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-virtual {v1, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity$2;->this$0:Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ProgressPageActivity;->finish()V

    .line 93
    return-void
.end method
