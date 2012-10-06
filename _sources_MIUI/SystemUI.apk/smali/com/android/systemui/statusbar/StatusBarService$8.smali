.class Lcom/android/systemui/statusbar/StatusBarService$8;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 1774
    :cond_1
    :goto_0
    return-void

    .line 1758
    :cond_2
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1759
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    goto :goto_0

    .line 1761
    :cond_3
    const-string v1, "com.android.systemui.statusbar.TRIGGER_CAMERA_KEY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1762
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #calls: Lcom/android/systemui/statusbar/StatusBarService;->triggerCameraKey()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$600(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 1763
    :cond_4
    const-string v1, "android.intent.action.LEAVE_INCALL_SCREEN_DURING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1764
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_5

    .line 1765
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->hideReturnToInCallScreenButton()V

    goto :goto_0

    .line 1767
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const-string v2, "call_state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "base_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarView;->showReturnToInCallScreenButton(Ljava/lang/String;J)V

    goto :goto_0

    .line 1771
    :cond_6
    const-string v1, "android.intent.action.ENTER_INCALL_SCREEN_DURING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1772
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$8;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->hideReturnToInCallScreenButton()V

    goto :goto_0
.end method
