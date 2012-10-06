.class Lcom/miui/fmradio/FMRadioPlayerService$2;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioPlayerService;->registerBroadcastListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioPlayerService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x64

    const/4 v10, 0x0

    const/16 v9, 0x12

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, action:Ljava/lang/String;
    const-string v4, "RadioPlayerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v7, v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 176
    .local v3, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    .end local v3           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 177
    :cond_1
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-static {v4}, Lcom/miui/fmradio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 179
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 180
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 182
    .end local v1           #enabled:Z
    :cond_2
    const-string v4, "com.miui.fmradio.routeheadset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v4, v7}, Lcom/miui/fmradio/FMRadioPlayerService;->access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 184
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_fm_audio_routing"

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 186
    :cond_3
    const-string v4, "com.miui.fmradio.routeloudspeaker"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #setter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v4, v8}, Lcom/miui/fmradio/FMRadioPlayerService;->access$402(Lcom/miui/fmradio/FMRadioPlayerService;I)I

    .line 188
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$500(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_fm_audio_routing"

    iget-object v6, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mFMAudioRouting:I
    invoke-static {v6}, Lcom/miui/fmradio/FMRadioPlayerService;->access$400(Lcom/miui/fmradio/FMRadioPlayerService;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 190
    :cond_4
    const-string v4, "com.miui.fmradio.volume.change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    const-string v4, "type"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, iType:I
    packed-switch v2, :pswitch_data_0

    .line 204
    const-string v4, "RadioPlayerService"

    const-string v5, "iType is not supported!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    :pswitch_1
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 199
    :pswitch_2
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 206
    .end local v2           #iType:I
    :cond_5
    const-string v4, "com.miui.fmradio.switchoff.timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 207
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$300(Lcom/miui/fmradio/FMRadioPlayerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 208
    :cond_6
    const-string v4, "com.miui.fmradio.quit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 209
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 210
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->close()Z

    .line 212
    :cond_7
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v5, "com.miui.fmradio.quitui"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v4, v5, v10}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    invoke-virtual {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->stopSelf()V

    goto/16 :goto_0

    .line 214
    :cond_8
    const-string v4, "com.miui.fmradio.mute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 215
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->isMute()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 217
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    .line 221
    :goto_1
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    const-string v5, "com.miui.fmradio.muteui"

    #calls: Lcom/miui/fmradio/FMRadioPlayerService;->notifyCmdResults(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v4, v5, v10}, Lcom/miui/fmradio/FMRadioPlayerService;->access$600(Lcom/miui/fmradio/FMRadioPlayerService;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 219
    :cond_9
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->setMute(I)Z

    goto :goto_1

    .line 223
    :cond_a
    const-string v4, "com.miui.fmradio.seeknext"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 224
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->isMute()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->seek(I)Z

    goto/16 :goto_0

    .line 227
    :cond_b
    const-string v4, "com.miui.fmradio.seekprevious"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->isMute()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/miui/fmradio/FMRadioPlayerService$2;->this$0:Lcom/miui/fmradio/FMRadioPlayerService;

    #getter for: Lcom/miui/fmradio/FMRadioPlayerService;->mServiceState:Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioPlayerService;->access$000(Lcom/miui/fmradio/FMRadioPlayerService;)Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/miui/fmradio/FMRadioPlayerService$FMServiceStateBase;->seek(I)Z

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
