.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x3

    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 96
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    if-le v1, v2, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #calls: Lcom/android/phone/CallWaitingCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v2, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    .line 100
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 104
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 105
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    if-le v1, v2, :cond_3

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    #calls: Lcom/android/phone/CallWaitingCheckBoxPreference;->handleSetCallWaitingResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v2, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    .line 109
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->mPreference:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 88
    return-void
.end method
