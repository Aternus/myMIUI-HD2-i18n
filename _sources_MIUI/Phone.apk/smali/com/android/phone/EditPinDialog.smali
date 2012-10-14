.class public Lcom/android/phone/EditPinDialog;
.super Ljava/lang/Object;
.source "EditPinDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EditPinDialog$3;,
        Lcom/android/phone/EditPinDialog$Mode;,
        Lcom/android/phone/EditPinDialog$DialogClosedListener;
    }
.end annotation


# instance fields
.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonPositive:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mEditTextConfirmNewPin:Landroid/widget/EditText;

.field private mEditTextNewPin:Landroid/widget/EditText;

.field private mEditTextOldPinPuk:Landroid/widget/EditText;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;

.field private mMode:Lcom/android/phone/EditPinDialog$Mode;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTextViewPrompt:Landroid/widget/TextView;

.field private mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/EditPinDialog$Mode;Lcom/android/phone/EditPinDialog$DialogClosedListener;)V
    .locals 5
    .parameter "context"
    .parameter "mode"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    new-instance v1, Lcom/android/phone/EditPinDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/EditPinDialog$2;-><init>(Lcom/android/phone/EditPinDialog;)V

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    .line 82
    iput-object v4, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;

    .line 85
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    .line 87
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 88
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/phone/EditPinDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EditPinDialog$1;-><init>(Lcom/android/phone/EditPinDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mTextViewTitle:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    .line 100
    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    .line 101
    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    .line 102
    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mButtonPositive:Landroid/widget/Button;

    .line 103
    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mButtonNegative:Landroid/widget/Button;

    .line 105
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 106
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 108
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 116
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 118
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 120
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 124
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 125
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 126
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 127
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EditPinDialog;)Lcom/android/phone/EditPinDialog$DialogClosedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/EditPinDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/EditPinDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EditPinDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/EditPinDialog;->process()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/EditPinDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/EditPinDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EditPinDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/EditPinDialog;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/EditPinDialog;)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/EditPinDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/EditPinDialog;->showToast(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/EditPinDialog;Lcom/android/phone/EditPinDialog$Mode;)Lcom/android/phone/EditPinDialog$Mode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/EditPinDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    return-object v0
.end method

.method private dismiss(Z)V
    .locals 1
    .parameter "cancel"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mListener:Lcom/android/phone/EditPinDialog$DialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/EditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/EditPinDialog;Z)V

    .line 510
    :cond_2
    return-void
.end method

.method private process()V
    .locals 11

    .prologue
    const v10, 0x7f0c011a

    const v9, 0x7f0c010c

    const v8, 0x7f0c010b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, pinpuk:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, newPin:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, confirmNewPin:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lcom/android/phone/EditPinDialog$3;->$SwitchMap$com$android$phone$EditPinDialog$Mode:[I

    iget-object v5, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v5}, Lcom/android/phone/EditPinDialog$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 398
    :goto_0
    return-void

    .line 320
    :pswitch_0
    invoke-static {v3, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 324
    :cond_0
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->what:I

    .line 325
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v5, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 329
    :pswitch_1
    invoke-static {v3, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c011b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 333
    :cond_2
    const/4 v4, 0x3

    iput v4, v1, Landroid/os/Message;->what:I

    .line 334
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    iget-object v5, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5, v3, v1}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_2

    .line 338
    :pswitch_2
    invoke-static {v3, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 339
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 340
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 341
    :cond_4
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 342
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 344
    :cond_5
    invoke-static {v2, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 345
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0125

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 348
    :cond_6
    const/4 v4, 0x4

    iput v4, v1, Landroid/os/Message;->what:I

    .line 349
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 353
    :pswitch_3
    invoke-static {v3, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 354
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c011b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 356
    :cond_7
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 357
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 359
    :cond_8
    invoke-static {v2, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 360
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0126

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 363
    :cond_9
    const/4 v4, 0x5

    iput v4, v1, Landroid/os/Message;->what:I

    .line 364
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 368
    :pswitch_4
    invoke-static {v3, v7}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 369
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0127

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 371
    :cond_a
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 372
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 374
    :cond_b
    invoke-static {v2, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_c

    .line 375
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0125

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 378
    :cond_c
    const/4 v4, 0x6

    iput v4, v1, Landroid/os/Message;->what:I

    .line 379
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 383
    :pswitch_5
    invoke-static {v3, v7}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 384
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c011c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 386
    :cond_d
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 387
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 389
    :cond_e
    invoke-static {v2, v6}, Lcom/android/phone/EditPinDialog;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_f

    .line 390
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0126

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 391
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 393
    :cond_f
    const/4 v4, 0x7

    iput v4, v1, Landroid/os/Message;->what:I

    .line 394
    iget-object v4, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method

.method private updateDialog()Z
    .locals 15

    .prologue
    .line 141
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->isIccPin1Locked()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 143
    const/4 v10, 0x0

    .line 278
    :goto_0
    return v10

    .line 144
    :cond_1
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->isIccPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 145
    sget-object v10, Lcom/android/phone/EditPinDialog$Mode;->PUK2:Lcom/android/phone/EditPinDialog$Mode;

    iput-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    .line 160
    :cond_2
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PUK1:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_10

    .line 161
    :cond_3
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f0c010d

    move v9, v10

    .line 164
    .local v9, titleId:I
    :goto_1
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_c

    .line 165
    :cond_4
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v3

    .line 166
    .local v3, pin1RetryCount:I
    if-lez v3, :cond_b

    .line 167
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c01fe

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 171
    :cond_5
    const/4 v10, 0x1

    if-ne v3, v10, :cond_6

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0121

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    :cond_6
    :goto_2
    const v2, 0x7f0c0107

    .line 178
    .local v2, oldPinPukHitId:I
    const v1, 0x7f0c0108

    .line 179
    .local v1, newPinHitId:I
    const v0, 0x7f0c0109

    .line 236
    .end local v3           #pin1RetryCount:I
    .local v0, confirmNewPinHitId:I
    :goto_3
    sget-object v10, Lcom/android/phone/EditPinDialog$3;->$SwitchMap$com$android$phone$EditPinDialog$Mode:[I

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v11}, Lcom/android/phone/EditPinDialog$Mode;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 252
    const v5, 0x7f0c020f

    .line 255
    .local v5, progressId:I
    :goto_4
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1c

    .line 256
    :cond_7
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 257
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 263
    :goto_5
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 265
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_6
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 271
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 273
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 275
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mButtonPositive:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 278
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 146
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v5           #progressId:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_8
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->isIccPin2Locked()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 147
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x1080027

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00e3

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c011f

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 151
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 161
    :cond_9
    const v10, 0x7f0c010e

    move v9, v10

    goto/16 :goto_1

    :cond_a
    const v10, 0x7f0c0105

    move v9, v10

    goto/16 :goto_1

    .line 175
    .restart local v3       #pin1RetryCount:I
    .restart local v9       #titleId:I
    :cond_b
    iget-object v6, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto/16 :goto_2

    .line 181
    .end local v3           #pin1RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v7

    .line 182
    .local v7, puk1RetryCount:I
    if-lez v7, :cond_f

    .line 183
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c01fe

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 184
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 187
    :cond_d
    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    .line 188
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0123

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 193
    :cond_e
    :goto_7
    const v2, 0x7f0c0122

    .line 194
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0108

    .line 195
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c0109

    .line 196
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 191
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_7

    .line 197
    .end local v6           #prompt:Ljava/lang/String;
    .end local v7           #puk1RetryCount:I
    .end local v9           #titleId:I
    :cond_10
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_11

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PUK2:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_1b

    .line 198
    :cond_11
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_15

    const v10, 0x7f0c00e3

    move v9, v10

    .line 199
    .restart local v9       #titleId:I
    :goto_8
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    if-eq v10, v11, :cond_12

    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    sget-object v11, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v10, v11, :cond_17

    .line 200
    :cond_12
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v4

    .line 201
    .local v4, pin2RetryCount:I
    if-lez v4, :cond_16

    .line 202
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c01fe

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 206
    :cond_13
    const/4 v10, 0x1

    if-ne v4, v10, :cond_14

    .line 207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0124

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    :cond_14
    :goto_9
    const v2, 0x7f0c0115

    .line 213
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0116

    .line 214
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c0117

    .line 215
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 198
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    .end local v9           #titleId:I
    :cond_15
    const v10, 0x7f0c00e8

    move v9, v10

    goto :goto_8

    .line 210
    .restart local v4       #pin2RetryCount:I
    .restart local v9       #titleId:I
    :cond_16
    iget-object v6, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_9

    .line 216
    .end local v4           #pin2RetryCount:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_17
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->getIccPuk2RetryCount()I

    move-result v8

    .line 217
    .local v8, puk2RetryCount:I
    if-lez v8, :cond_1a

    .line 218
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v11, 0x7f0c01fe

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .restart local v6       #prompt:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    :cond_18
    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/EditPinDialog;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0123

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    :cond_19
    :goto_a
    const v2, 0x7f0c011e

    .line 229
    .restart local v2       #oldPinPukHitId:I
    const v1, 0x7f0c0116

    .line 230
    .restart local v1       #newPinHitId:I
    const v0, 0x7f0c0117

    .line 231
    .restart local v0       #confirmNewPinHitId:I
    goto/16 :goto_3

    .line 226
    .end local v0           #confirmNewPinHitId:I
    .end local v1           #newPinHitId:I
    .end local v2           #oldPinPukHitId:I
    .end local v6           #prompt:Ljava/lang/String;
    :cond_1a
    iget-object v6, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .restart local v6       #prompt:Ljava/lang/String;
    goto :goto_a

    .line 233
    .end local v6           #prompt:Ljava/lang/String;
    .end local v8           #puk2RetryCount:I
    .end local v9           #titleId:I
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 238
    .restart local v0       #confirmNewPinHitId:I
    .restart local v1       #newPinHitId:I
    .restart local v2       #oldPinPukHitId:I
    .restart local v6       #prompt:Ljava/lang/String;
    .restart local v9       #titleId:I
    :pswitch_0
    const v5, 0x7f0c020b

    .line 239
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 241
    .end local v5           #progressId:I
    :pswitch_1
    const v5, 0x7f0c020c

    .line 242
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 244
    .end local v5           #progressId:I
    :pswitch_2
    const v5, 0x7f0c020d

    .line 245
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 248
    .end local v5           #progressId:I
    :pswitch_3
    const v5, 0x7f0c020e

    .line 249
    .restart local v5       #progressId:I
    goto/16 :goto_4

    .line 259
    :cond_1c
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 260
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_5

    .line 268
    :cond_1d
    iget-object v10, p0, Lcom/android/phone/EditPinDialog;->mTextViewPrompt:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v2, 0x8

    .line 298
    if-eqz p1, :cond_1

    move v0, v2

    .line 301
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 302
    :cond_0
    const/4 v1, 0x0

    .line 304
    :goto_1
    return v1

    .line 298
    .end local v0           #pinMinimum:I
    :cond_1
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 304
    .restart local v0       #pinMinimum:I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, enablePositiveButton:Z
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextOldPinPuk:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 540
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 543
    const/4 v0, 0x0

    .line 545
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mEditTextConfirmNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 548
    const/4 v0, 0x0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/phone/EditPinDialog;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 528
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EditPinDialog;->dismiss(Z)V

    .line 514
    return-void
.end method

.method public getMode()Lcom/android/phone/EditPinDialog$Mode;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/android/phone/EditPinDialog;->dismiss()V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 532
    return-void
.end method

.method public setMode(Lcom/android/phone/EditPinDialog$Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/phone/EditPinDialog;->mMode:Lcom/android/phone/EditPinDialog$Mode;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditPinDialog;->mErrorMessage:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/phone/EditPinDialog;->updateDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/phone/EditPinDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EditPinDialog;->dismiss()V

    goto :goto_0
.end method
