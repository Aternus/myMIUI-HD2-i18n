.class public Lcom/android/settings/XiaomiAccountBind;
.super Landroid/app/Activity;
.source "XiaomiAccountBind.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBindType:I

.field private mEditText:Landroid/widget/EditText;

.field private mToken:Ljava/lang/String;

.field private mVerifyButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/XiaomiAccountBind;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/XiaomiAccountBind;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/XiaomiAccountBind;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    return v0
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "errMessage"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountBind;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
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

    .line 202
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, value:Ljava/lang/String;
    iget v0, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    if-ne v0, v2, :cond_0

    .line 95
    invoke-static {v9}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f06003f

    invoke-virtual {p0, v1}, Lcom/android/settings/XiaomiAccountBind;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    if-ne v0, v10, :cond_1

    .line 100
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 101
    .local v7, namePat:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/android/settings/XiaomiAccountBind;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    .end local v7           #namePat:Ljava/util/regex/Pattern;
    :cond_1
    new-instance v6, Lcom/android/settings/XiaomiAccountHelper;

    invoke-direct {v6, p0}, Lcom/android/settings/XiaomiAccountHelper;-><init>(Landroid/content/Context;)V

    .line 108
    .local v6, helper:Lcom/android/settings/XiaomiAccountHelper;
    invoke-virtual {v6}, Lcom/android/settings/XiaomiAccountHelper;->getParameter()Lcom/android/settings/Parameter;

    move-result-object v8

    .line 109
    .local v8, params:Lcom/android/settings/Parameter;
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountBind;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    const-string v0, "token"

    iget-object v1, p0, Lcom/android/settings/XiaomiAccountBind;->mToken:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 112
    :cond_2
    iget v0, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    if-ne v0, v2, :cond_3

    .line 113
    const-string v0, "phone"

    invoke-virtual {v8, v0, v9}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    .line 120
    :goto_1
    new-instance v0, Lcom/android/settings/XiaomiAccountBind$1;

    const v4, 0x7f060054

    move-object v1, p0

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/XiaomiAccountBind$1;-><init>(Lcom/android/settings/XiaomiAccountBind;Landroid/content/Context;IIZLcom/android/settings/XiaomiAccountHelper;)V

    new-array v1, v10, [Lcom/android/settings/Parameter;

    aput-object v8, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/XiaomiAccountBind$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 114
    :cond_3
    iget v0, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    if-ne v0, v10, :cond_4

    .line 115
    const-string v0, "email"

    invoke-virtual {v8, v0, v9}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    goto :goto_1

    .line 117
    :cond_4
    const-string v0, "nickname"

    invoke-virtual {v8, v0, v9}, Lcom/android/settings/Parameter;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/Parameter;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const v5, 0x7f07000e

    const v4, 0x7f07000d

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->setContentView(I)V

    .line 48
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    .line 49
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountBind;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.settings.XIAOMI_ACCOUNT_BIND_NICKNAME"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 55
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {v2, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mToken:Ljava/lang/String;

    .line 58
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    .line 67
    .end local v0           #account:Landroid/accounts/Account;
    :goto_0
    iget v2, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    if-ne v2, v6, :cond_2

    .line 68
    const v2, 0x7f06003b

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->setTitle(I)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06003c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p0, v5}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 88
    :goto_1
    return-void

    .line 60
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountBind;->finish()V

    goto :goto_0

    .line 63
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountBind;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mToken:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/XiaomiAccountBind;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_bind_type"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    goto :goto_0

    .line 74
    :cond_2
    iget v2, p0, Lcom/android/settings/XiaomiAccountBind;->mBindType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 75
    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->setTitle(I)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060036

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 79
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v3, 0x7f060038

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 82
    :cond_3
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/android/settings/XiaomiAccountBind;->setTitle(I)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 84
    invoke-virtual {p0, v5}, Lcom/android/settings/XiaomiAccountBind;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mEditText:Landroid/widget/EditText;

    const v3, 0x7f060032

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 86
    iget-object v2, p0, Lcom/android/settings/XiaomiAccountBind;->mVerifyButton:Landroid/widget/Button;

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method
