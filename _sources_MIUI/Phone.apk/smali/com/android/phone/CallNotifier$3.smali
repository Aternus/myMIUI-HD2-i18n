.class Lcom/android/phone/CallNotifier$3;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x1

    .line 988
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCurrentCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 990
    .local v2, c:Lcom/android/internal/telephony/Connection;
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v6, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-boolean v7, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v7, :cond_2

    move v7, v8

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Telephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    .line 991
    .local v4, ret:I
    if-ne v4, v8, :cond_7

    .line 994
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Telephony;->getCallAct(Landroid/content/Context;)I

    move-result v1

    .line 995
    .local v1, blacklist_act:I
    if-nez v1, :cond_3

    .line 996
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    const-string v6, "\u62d2\u63a5\u9ed1\u540d\u5355\u6210\u5458\u6765\u7535."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 997
    :cond_0
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Connection;->setFirewallCode(I)V

    .line 998
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :goto_1
    return-void

    .line 990
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1000
    .restart local v1       #blacklist_act:I
    .restart local v4       #ret:I
    :cond_3
    if-ne v1, v8, :cond_4

    .line 1026
    .end local v1           #blacklist_act:I
    .end local v4           #ret:I
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1027
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    iget-object v7, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {v6, v7, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    #setter for: Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;
    invoke-static {v5, v6}, Lcom/android/phone/CallNotifier;->access$1802(Lcom/android/phone/CallNotifier;Lcom/android/phone/CallNotifier$InCallTonePlayer;)Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1028
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Lcom/android/phone/CallNotifier$InCallTonePlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->start()V

    .line 1032
    :cond_5
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    const-string v6, "- showing incoming call (this is a WAITING call)..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1033
    :cond_6
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->showIncomingCall()V
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)V

    goto :goto_1

    .line 1006
    .restart local v4       #ret:I
    :cond_7
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1009
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Telephony;->getCallAct(Landroid/content/Context;)I

    move-result v0

    .line 1010
    .local v0, act:I
    if-nez v0, :cond_a

    .line 1011
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1600()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    const-string v6, "\u62d2\u63a5\u975e\u767d\u540d\u5355\u6210\u5458\u6765\u7535."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1012
    :cond_8
    if-eqz v2, :cond_9

    const/16 v5, 0x101

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/Connection;->setFirewallCode(I)V

    .line 1013
    :cond_9
    iget-object v5, p0, Lcom/android/phone/CallNotifier$3;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/CallNotifier;->access$1400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1021
    .end local v0           #act:I
    .end local v4           #ret:I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 1022
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v5, "CallNotifier"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1015
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v0       #act:I
    .restart local v4       #ret:I
    :cond_a
    if-ne v0, v8, :cond_4

    goto :goto_2
.end method
