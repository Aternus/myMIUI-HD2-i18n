.class public Lcom/miui/cloudservice/authenticator/NewAccountActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "NewAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;
    }
.end annotation


# static fields
.field private static COUNT_DOWN_COUNTS:I

.field private static COUNT_DOWN_TYPE:I


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mByEmail:Landroid/widget/Button;

.field private mCountDownHandler:Landroid/os/Handler;

.field private mCreateAccount:Landroid/widget/Button;

.field private mGetVercode:Landroid/widget/Button;

.field private mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

.field private mMid:Ljava/lang/String;

.field private mMobile:Landroid/widget/EditText;

.field private mNickname:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mPcWebLayout:Landroid/view/View;

.field private mPcWebsite:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSalt:Ljava/lang/String;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mStatus:Landroid/widget/TextView;

.field private mToken:Ljava/lang/String;

.field private mUserAgreement:Landroid/widget/TextView;

.field private mVercode:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->COUNT_DOWN_TYPE:I

    .line 68
    const/16 v0, 0x1e

    sput v0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->COUNT_DOWN_COUNTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    .line 377
    new-instance v0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$4;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V

    iput-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Lcom/miui/cloudservice/authenticator/AccountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->COUNT_DOWN_TYPE:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->COUNT_DOWN_COUNTS:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/cloudservice/authenticator/NewAccountActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->updateStatus(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    return-object p1
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "errMessage"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 176
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 178
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mStatus:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    if-gtz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mShowPassword:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 396
    if-eqz p2, :cond_1

    .line 397
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const v9, 0x7f070031

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "android.intent.action.VIEW"

    .line 225
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mByEmail:Landroid/widget/Button;

    if-ne p1, v8, :cond_1

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    const-string v8, "http://passport.xiaomi.com/user/register"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;

    if-ne p1, v8, :cond_4

    .line 230
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, mobile:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 232
    :cond_2
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v8}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v4

    .line 237
    .local v4, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v8, "phone"

    invoke-virtual {v4, v8, v2}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 238
    new-instance v8, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;

    invoke-direct {v8, p0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V

    new-array v9, v11, [Lcom/miui/cloudservice/authenticator/Parameter;

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 277
    .end local v2           #mobile:Ljava/lang/String;
    .end local v4           #params:Lcom/miui/cloudservice/authenticator/Parameter;
    :cond_4
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;

    if-ne p1, v8, :cond_d

    .line 278
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2       #mobile:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 280
    :cond_5
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_6
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mVercode:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, vercode:Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 285
    :cond_7
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mVercode:Landroid/widget/EditText;

    const v9, 0x7f070032

    invoke-virtual {p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 288
    :cond_8
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, nickname:Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 290
    :cond_9
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    const v9, 0x7f070033

    invoke-virtual {p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 293
    :cond_a
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, password:Ljava/lang/String;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_c

    .line 295
    :cond_b
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPassword:Landroid/widget/EditText;

    const v9, 0x7f070034

    invoke-virtual {p0, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 299
    :cond_c
    new-instance v0, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v4

    .line 301
    .restart local v4       #params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v8, "vkey"

    invoke-virtual {v4, v8, v7}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 302
    const-string v8, "nickname"

    invoke-virtual {v4, v8, v3}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 303
    const-string v8, "password"

    invoke-virtual {v4, v8, v5}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 304
    const-string v8, "originalpassword"

    invoke-virtual {v4, v8, v5}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 305
    const-string v8, "mid"

    iget-object v9, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 306
    const-string v8, "salt"

    iget-object v9, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 307
    const-string v8, "token"

    iget-object v9, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 308
    new-instance v8, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;

    invoke-direct {v8, p0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V

    new-array v9, v11, [Lcom/miui/cloudservice/authenticator/Parameter;

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 370
    .end local v0           #helper:Lcom/miui/cloudservice/authenticator/AccountHelper;
    .end local v2           #mobile:Ljava/lang/String;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #params:Lcom/miui/cloudservice/authenticator/Parameter;
    .end local v5           #password:Ljava/lang/String;
    .end local v7           #vercode:Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPcWebLayout:Landroid/view/View;

    if-ne p1, v8, :cond_0

    .line 371
    iget-object v8, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPcWebsite:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, site:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v12, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 373
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "pSavedInstanceState"

    .prologue
    const/16 v9, 0x21

    .line 72
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 75
    new-instance v5, Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-direct {v5, p0}, Lcom/miui/cloudservice/authenticator/AccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    .line 77
    const v5, 0x7f090007

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mByEmail:Landroid/widget/Button;

    .line 78
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mByEmail:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v5, 0x7f090009

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    .line 81
    const v5, 0x7f09000b

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mVercode:Landroid/widget/EditText;

    .line 82
    const v5, 0x7f09000c

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    .line 83
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    const v5, 0x7f090001

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPassword:Landroid/widget/EditText;

    .line 86
    const v5, 0x7f09000a

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;

    .line 87
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mGetVercode:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x7f090012

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mStatus:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f090011

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 92
    const v5, 0x7f09000d

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 93
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    const v5, 0x7f09000e

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;

    .line 96
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCreateAccount:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v5, 0x7f090014

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPcWebsite:Landroid/widget/TextView;

    .line 99
    const v5, 0x7f090013

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPcWebLayout:Landroid/view/View;

    .line 100
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mPcWebLayout:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v5, 0x7f07002c

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, s1:Ljava/lang/String;
    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, s2:Ljava/lang/String;
    const v5, 0x7f07002e

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, s3:Ljava/lang/String;
    const v5, 0x7f07002f

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, s4:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 108
    .local v4, ss:Landroid/text/SpannableStringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    new-instance v5, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;

    sget-object v6, Lcom/android/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 111
    new-instance v5, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;

    sget-object v6, Lcom/android/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 115
    const v5, 0x7f090010

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mUserAgreement:Landroid/widget/TextView;

    .line 116
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mUserAgreement:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mUserAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 118
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 182
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, nickname:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mNickname:Landroid/widget/EditText;

    const v3, 0x7f070033

    invoke-virtual {p0, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 221
    .end local v0           #nickname:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 190
    .restart local v0       #nickname:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mHelper:Lcom/miui/cloudservice/authenticator/AccountHelper;

    invoke-virtual {v2}, Lcom/miui/cloudservice/authenticator/AccountHelper;->getParameter()Lcom/miui/cloudservice/authenticator/Parameter;

    move-result-object v1

    .line 191
    .local v1, params:Lcom/miui/cloudservice/authenticator/Parameter;
    const-string v2, "nickname"

    invoke-virtual {v1, v2, v0}, Lcom/miui/cloudservice/authenticator/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/cloudservice/authenticator/Parameter;

    .line 192
    new-instance v2, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;-><init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/cloudservice/authenticator/Parameter;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/miui/cloudservice/authenticator/NewAccountActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const-string v4, ""

    .line 143
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStart()V

    .line 144
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    const-string v2, "phone"

    const-string v3, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const-string v1, "mid"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    .line 147
    const-string v1, "salt"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    .line 148
    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    .line 149
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const-string v4, ""

    .line 153
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onStop()V

    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMobile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mid"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    move-object v3, v4

    :goto_0
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "salt"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    move-object v3, v4

    :goto_1
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "token"

    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    move-object v3, v4

    :goto_2
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mCountDownHandler:Landroid/os/Handler;

    sget v2, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->COUNT_DOWN_TYPE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    return-void

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mMid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mSalt:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->mToken:Ljava/lang/String;

    goto :goto_2
.end method
