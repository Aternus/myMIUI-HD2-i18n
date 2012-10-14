.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 164
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 173
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 174
    .local v3, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 175
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, action:Ljava/lang/String;
    const-string v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, error:I
    const-string v4, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    .line 194
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 195
    return-void

    .line 182
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_1
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 184
    :cond_2
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 186
    :cond_3
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 187
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_4
    const-string v4, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V
    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0
.end method
