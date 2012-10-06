.class public Lcom/miui/uac/SuRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuRequestReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 17
    const-string v0, "caller_uid"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 18
    const-string v1, "desired_uid"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 19
    const-string v2, "desired_cmd"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, "socket"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    new-instance v4, Lcom/miui/uac/DBHelper;

    invoke-direct {v4, p1}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v4, v0, v1, v2}, Lcom/miui/uac/DBHelper;->checkApp(IILjava/lang/String;)Lcom/miui/uac/AppDetails;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/miui/uac/AppDetails;->getAllow()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/uac/SuRequest;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 28
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    :goto_0
    invoke-virtual {v4}, Lcom/miui/uac/DBHelper;->close()V

    .line 35
    return-void

    .line 31
    :cond_0
    invoke-static {p1, v0, v3}, Lcom/miui/uac/ResponseHelper;->sendResult(Landroid/content/Context;Lcom/miui/uac/AppDetails;Ljava/lang/String;)V

    goto :goto_0
.end method
