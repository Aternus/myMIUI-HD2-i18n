.class Lcom/miui/milk/ui/CloudBaseActivity$6;
.super Ljava/lang/Object;
.source "CloudBaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/CloudBaseActivity;
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
    .line 256
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBaseActivity$6;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity$6;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    check-cast p2, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->getService()Lcom/miui/milk/service/CloudBackupService;

    move-result-object v1

    #setter for: Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/CloudBaseActivity;->access$002(Lcom/miui/milk/ui/CloudBaseActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 264
    const-string v0, "CloudBaseActivity"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity$6;->this$0:Lcom/miui/milk/ui/CloudBaseActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/milk/ui/CloudBaseActivity;->mService:Lcom/miui/milk/service/CloudBackupService;
    invoke-static {v0, v1}, Lcom/miui/milk/ui/CloudBaseActivity;->access$002(Lcom/miui/milk/ui/CloudBaseActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;

    .line 273
    const-string v0, "CloudBaseActivity"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method
