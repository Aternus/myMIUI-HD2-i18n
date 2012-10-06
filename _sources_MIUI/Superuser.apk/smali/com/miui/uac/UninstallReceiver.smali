.class public Lcom/miui/uac/UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallReceiver.java"


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
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/miui/uac/DBHelper;

    invoke-direct {v0, p1}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 11
    .local v0, db:Lcom/miui/uac/DBHelper;
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 12
    .local v1, uid:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/uac/DBHelper;->deleteByUid(I)V

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper;->close()V

    .line 16
    return-void
.end method
