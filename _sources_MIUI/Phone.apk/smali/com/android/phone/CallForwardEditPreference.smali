.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;,
        Lcom/android/phone/CallForwardEditPreference$State;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field static sCurrentWorkReason:I

.field private static sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private static sState:Lcom/android/phone/CallForwardEditPreference$State;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field mRetryCount:I

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field reason:I

.field tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference$1;)V

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    .line 39
    sget-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 54
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0e0007

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    .line 58
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iput v3, p0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference;->handleGetCFResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference;->handleSetCFResponse(Landroid/os/Message;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x190

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 218
    sget-object v8, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v8, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 219
    iput v9, p0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    .line 220
    const/4 v8, -0x1

    sput v8, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 222
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v10, :cond_1

    .line 223
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v8, p0, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 228
    :goto_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 230
    .local v1, ar:Landroid/os/AsyncResult;
    iput-object v12, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 231
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_2

    .line 233
    invoke-virtual {p0, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 234
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const/16 v9, 0x12c

    invoke-interface {v8, p0, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 286
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    .line 287
    return-void

    .line 225
    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v8, p0, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 236
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v8, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 237
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v8, p0, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 239
    :cond_3
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v8

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v3, v0

    .line 240
    .local v3, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v8, v3

    if-nez v8, :cond_4

    .line 242
    invoke-virtual {p0, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 243
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v8, p0, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 245
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    array-length v6, v3

    .local v6, length:I
    :goto_2
    if-ge v4, v6, :cond_0

    .line 248
    iget v8, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    aget-object v9, v3, v4

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 250
    aget-object v5, v3, v4

    .line 251
    .local v5, info:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-virtual {p0, v5}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 257
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v10, :cond_5

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_5

    iget v8, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v10, :cond_5

    .line 261
    iget v8, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_0

    .line 269
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c005a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 271
    .local v7, s:Ljava/lang/CharSequence;
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0c0064

    invoke-virtual {v2, v8, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c005c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 245
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #s:Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 263
    .restart local v5       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0052

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 264
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 266
    .end local v7           #s:Ljava/lang/CharSequence;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0056

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 267
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .local v0, ar:Landroid/os/AsyncResult;
    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v1, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 292
    iput v7, p0, Lcom/android/phone/CallForwardEditPreference;->mRetryCount:I

    .line 293
    const/4 v1, -0x1

    sput v1, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 295
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 300
    :cond_0
    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Getting:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v1, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 301
    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sput v1, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 302
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sget-object v3, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 304
    return-void
.end method

.method private updateSummaryText()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 161
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 162
    .local v2, values:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 166
    .end local v2           #values:[Ljava/lang/String;
    .local v1, summaryOn:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 169
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #summaryOn:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 164
    .restart local v0       #number:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c004d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #summaryOn:Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 2
    .parameter "cf"

    .prologue
    const/4 v1, 0x1

    .line 149
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 152
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 153
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 154
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 6
    .parameter "listener"
    .parameter "skipReading"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 72
    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->init(Lcom/android/phone/CallForwardEditPreference;)V

    .line 74
    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    sget-object v1, Lcom/android/phone/CallForwardEditPreference$State;->Idle:Lcom/android/phone/CallForwardEditPreference$State;

    if-ne v0, v1, :cond_1

    .line 75
    if-nez p2, :cond_0

    .line 76
    sget-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Getting:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 77
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sput v0, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 78
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sget-object v2, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    sget-object v1, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    sget-object v2, Lcom/android/phone/CallForwardEditPreference$State;->Getting:Lcom/android/phone/CallForwardEditPreference$State;

    if-ne v1, v2, :cond_2

    move v1, v5

    :goto_1
    invoke-interface {v0, p0, v1}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 95
    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 96
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 104
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_0
    move v1, v5

    .line 108
    .local v1, action:I
    :goto_0
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    move v4, v6

    .line 109
    .local v4, time:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, number:Ljava/lang/String;
    if-ne v1, v5, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    .end local v1           #action:I
    .end local v3           #number:Ljava/lang/String;
    .end local v4           #time:I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v6

    .line 105
    goto :goto_0

    .line 108
    .restart local v1       #action:I
    :cond_3
    const/16 v0, 0x14

    move v4, v0

    goto :goto_1

    .line 126
    .restart local v3       #number:Ljava/lang/String;
    .restart local v4       #time:I
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 130
    sget-object v0, Lcom/android/phone/CallForwardEditPreference$State;->Setting:Lcom/android/phone/CallForwardEditPreference$State;

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->sState:Lcom/android/phone/CallForwardEditPreference$State;

    .line 131
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sput v0, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 132
    sget-object v0, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->init(Lcom/android/phone/CallForwardEditPreference;)V

    .line 133
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    sget-object v5, Lcom/android/phone/CallForwardEditPreference;->sHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v7, v1, v7}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_2
.end method
