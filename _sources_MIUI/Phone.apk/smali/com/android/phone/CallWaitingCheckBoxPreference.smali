.class public Lcom/android/phone/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingCheckBoxPreference$1;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;,
        Lcom/android/phone/CallWaitingCheckBoxPreference$State;
    }
.end annotation


# static fields
.field private static final sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

.field private static sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;


# instance fields
.field private final DBG:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field mRetryCount:I

.field mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    .line 28
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->DBG:Z

    .line 37
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 38
    iput v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallWaitingCheckBoxPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallWaitingCheckBoxPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 118
    .local v0, ar:Landroid/os/AsyncResult;
    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 119
    iput v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    .line 121
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_0

    .line 122
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 129
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v2, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 139
    :cond_1
    :goto_1
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v2, 0x190

    invoke-interface {v1, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v2

    if-ne v1, v3, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 143
    .local v0, ar:Landroid/os/AsyncResult;
    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 144
    iput v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mRetryCount:I

    .line 146
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 152
    :cond_0
    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 153
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 155
    return-void
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 51
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->init(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    .line 53
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    if-ne v0, v1, :cond_1

    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 56
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sget-object v2, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    if-ne v1, v2, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 71
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Setting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference;->sState:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 72
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v1

    sget-object v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->sHandler:Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 75
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/phone/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 78
    :cond_0
    return-void
.end method
