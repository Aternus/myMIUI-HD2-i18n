.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mPreference:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 191
    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    if-le v0, v1, :cond_1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->handleGetCFResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v1, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    .line 195
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v1, v1, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 200
    .end local v6           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 201
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    if-le v0, v1, :cond_3

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->handleSetCFResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v1, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    .line 205
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v3}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget v5, p1, Landroid/os/Message;->what:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x14

    goto :goto_1

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->mPreference:Lcom/android/phone/CallForwardEditPreference;

    .line 183
    return-void
.end method
