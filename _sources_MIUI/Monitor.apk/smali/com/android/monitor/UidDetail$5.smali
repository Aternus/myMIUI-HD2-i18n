.class Lcom/android/monitor/UidDetail$5;
.super Landroid/content/BroadcastReceiver;
.source "UidDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/UidDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/UidDetail;


# direct methods
.method constructor <init>(Lcom/android/monitor/UidDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/monitor/UidDetail$5;->this$0:Lcom/android/monitor/UidDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/monitor/UidDetail$5;->this$0:Lcom/android/monitor/UidDetail;

    #getter for: Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/monitor/UidDetail;->access$400(Lcom/android/monitor/UidDetail;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/monitor/UidDetail$5;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    return-void

    .line 243
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
