.class Lcom/android/monitor/Traffic$1;
.super Landroid/content/BroadcastReceiver;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/Traffic;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/monitor/Traffic$1;->this$0:Lcom/android/monitor/Traffic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/monitor/Traffic$1;->this$0:Lcom/android/monitor/Traffic;

    #calls: Lcom/android/monitor/Traffic;->updateDuration()V
    invoke-static {v0}, Lcom/android/monitor/Traffic;->access$000(Lcom/android/monitor/Traffic;)V

    .line 93
    return-void
.end method
