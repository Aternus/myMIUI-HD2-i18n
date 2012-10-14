.class Lcom/miui/player/ui/OnlineMusicBaseActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "OnlineMusicBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$2;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/OnlineMusicBaseActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 441
    return-void
.end method
