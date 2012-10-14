.class Lcom/miui/milk/ui/FindlostContactSelectActivity$1;
.super Ljava/lang/Object;
.source "FindlostContactSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/FindlostContactSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/FindlostContactSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060055

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mContactInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$100(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/ContactInfo;

    .line 84
    iget-boolean v3, v0, Lcom/miui/milk/common/ContactInfo;->checked:Z

    if-eqz v3, :cond_1

    .line 85
    iget-object v0, v0, Lcom/miui/milk/common/ContactInfo;->contact:Lcom/miui/milk/model/ContactProtos2$Contact;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_2
    const-wide/16 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    #getter for: Lcom/miui/milk/ui/FindlostContactSelectActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->access$000(Lcom/miui/milk/ui/FindlostContactSelectActivity;)Lcom/miui/milk/service/CloudBackupService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/milk/service/CloudBackupService;->runFindlost(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 96
    :goto_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    const-class v4, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v3, "TASK_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-virtual {v0, v2}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcom/miui/milk/ui/FindlostContactSelectActivity$1;->this$0:Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-virtual {v0}, Lcom/miui/milk/ui/FindlostContactSelectActivity;->finish()V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method
