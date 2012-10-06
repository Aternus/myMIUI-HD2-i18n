.class public Lcom/android/phone/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CLIRListPreference$1;,
        Lcom/android/phone/CLIRListPreference$MyHandler;,
        Lcom/android/phone/CLIRListPreference$State;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

.field private static sState:Lcom/android/phone/CLIRListPreference$State;


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field mRetryCount:I

.field phone:Lcom/android/internal/telephony/Phone;

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference$1;)V

    sput-object v0, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    .line 29
    sget-object v0, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    sput-object v0, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-boolean v1, p0, Lcom/android/phone/CLIRListPreference;->DBG:Z

    .line 40
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 41
    iput v1, p0, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CLIRListPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/phone/CLIRListPreference$MyHandler;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CLIRListPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference;->handleSetCLIRResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 165
    .local v1, ar:Landroid/os/AsyncResult;
    sget-object v3, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    sput-object v3, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    .line 166
    iput v4, p0, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    .line 168
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v3, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 173
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 174
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 176
    iget-object v4, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v4, p0, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 189
    :goto_1
    return-void

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v3, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v3, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 181
    .local v2, clirArray:[I
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 182
    iget-object v3, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v3, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 193
    .local v0, ar:Landroid/os/AsyncResult;
    sget-object v1, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    sput-object v1, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    .line 194
    iput v4, p0, Lcom/android/phone/CLIRListPreference;->mRetryCount:I

    .line 196
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 204
    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 7
    .parameter "tmpClirArray"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 80
    aget v3, p1, v5

    if-eq v3, v5, :cond_0

    aget v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    aget v3, p1, v5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v5

    .line 81
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, value:I
    aget v3, p1, v5

    packed-switch v3, :pswitch_data_0

    .line 105
    :pswitch_0
    const/4 v2, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/phone/CLIRListPreference;->setValueIndex(I)V

    .line 111
    const v1, 0x7f0c0045

    .line 112
    .local v1, summary:I
    packed-switch v2, :pswitch_data_1

    .line 123
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->setSummary(I)V

    .line 124
    return-void

    .end local v0           #enabled:Z
    .end local v1           #summary:I
    .end local v2           #value:I
    :cond_1
    move v0, v6

    .line 80
    goto :goto_0

    .line 89
    .restart local v0       #enabled:Z
    .restart local v2       #value:I
    :pswitch_1
    aget v3, p1, v6

    packed-switch v3, :pswitch_data_2

    .line 98
    const/4 v2, 0x0

    .line 99
    goto :goto_1

    .line 91
    :pswitch_2
    const/4 v2, 0x1

    .line 92
    goto :goto_1

    .line 94
    :pswitch_3
    const/4 v2, 0x2

    .line 95
    goto :goto_1

    .line 114
    .restart local v1       #summary:I
    :pswitch_4
    const v1, 0x7f0c0044

    .line 115
    goto :goto_2

    .line 117
    :pswitch_5
    const v1, 0x7f0c0043

    .line 118
    goto :goto_2

    .line 120
    :pswitch_6
    const v1, 0x7f0c0045

    goto :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 89
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 5
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 62
    sget-object v0, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CLIRListPreference$MyHandler;->init(Lcom/android/phone/CLIRListPreference;)V

    .line 64
    sget-object v0, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    sget-object v1, Lcom/android/phone/CLIRListPreference$State;->Idle:Lcom/android/phone/CLIRListPreference$State;

    if-ne v0, v1, :cond_1

    .line 65
    if-nez p2, :cond_0

    .line 66
    sget-object v0, Lcom/android/phone/CLIRListPreference$State;->Getting:Lcom/android/phone/CLIRListPreference$State;

    sput-object v0, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    .line 67
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 69
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    sget-object v1, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    sget-object v2, Lcom/android/phone/CLIRListPreference$State;->Getting:Lcom/android/phone/CLIRListPreference$State;

    if-ne v1, v2, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 52
    sget-object v0, Lcom/android/phone/CLIRListPreference$State;->Setting:Lcom/android/phone/CLIRListPreference$State;

    sput-object v0, Lcom/android/phone/CLIRListPreference;->sState:Lcom/android/phone/CLIRListPreference$State;

    .line 53
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/phone/CLIRListPreference;->sHandler:Lcom/android/phone/CLIRListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 58
    :cond_0
    return-void
.end method
