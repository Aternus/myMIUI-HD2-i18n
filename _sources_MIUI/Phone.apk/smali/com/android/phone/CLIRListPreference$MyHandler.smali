.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mPreference:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x3

    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 142
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget v1, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    if-le v1, v2, :cond_1

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    #calls: Lcom/android/phone/CLIRListPreference;->handleGetCLIRResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CLIRListPreference;->access$100(Lcom/android/phone/CLIRListPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget v2, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    .line 146
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/CLIRListPreference;->access$200()Lcom/android/phone/CLIRListPreference$MyHandler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    .line 150
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 151
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget v1, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    if-le v1, v2, :cond_3

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    #calls: Lcom/android/phone/CLIRListPreference;->handleSetCLIRResponse(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/phone/CLIRListPreference;->access$300(Lcom/android/phone/CLIRListPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget v2, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    .line 155
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v3}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/android/phone/CLIRListPreference;->access$200()Lcom/android/phone/CLIRListPreference$MyHandler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/android/phone/CLIRListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->mPreference:Lcom/android/phone/CLIRListPreference;

    .line 134
    return-void
.end method
