.class public Lcom/miui/cloudservice/authenticator/AddAccountActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/authenticator/AddAccountActivity$1;,
        Lcom/miui/cloudservice/authenticator/AddAccountActivity$ForgetPasswordClickListener;,
        Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;,
        Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;
    }
.end annotation


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mCreateAccount:Landroid/widget/LinearLayout;

.field private mForgetPassword:Landroid/widget/TextView;

.field private mLogin:Landroid/widget/LinearLayout;

.field private mLoginButton:Landroid/widget/Button;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mProgressbar:Landroid/widget/ProgressBar;

.field private mShowAccountDetail:Z

.field private mUsername:Ljava/lang/String;

.field private mUsernameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mShowAccountDetail:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsernameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->setLoginButtonStyles(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/cloudservice/authenticator/AddAccountActivity;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private setLoginButtonStyles(Z)V
    .locals 3
    .parameter "isPreExecute"

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mProgressbar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mLogin:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 86
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mLoginButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    const v1, 0x7f070030

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 87
    return-void

    .line 84
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const v1, 0x7f070003

    goto :goto_2
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "errMessage"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
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

    .line 93
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 95
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "pSavedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 48
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v5, "com.miui.auth"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 50
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v5, v1

    if-eqz v5, :cond_1

    .line 52
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, newPage:Landroid/content/Intent;
    const-string v5, "account"

    aget-object v6, v1, v8

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v3}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->finish()V

    .line 81
    .end local v3           #newPage:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->setContentView(I)V

    .line 62
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 63
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mLogin:Landroid/widget/LinearLayout;

    .line 64
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mLogin:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;

    invoke-direct {v6, p0, v7}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$LoginClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Lcom/miui/cloudservice/authenticator/AddAccountActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v5, 0x7f090004

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mLoginButton:Landroid/widget/Button;

    .line 66
    const v5, 0x7f090003

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mProgressbar:Landroid/widget/ProgressBar;

    .line 67
    const/high16 v5, 0x7f09

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsernameEditText:Landroid/widget/EditText;

    .line 68
    const v5, 0x7f090001

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 69
    const v5, 0x7f090005

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mForgetPassword:Landroid/widget/TextView;

    .line 70
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mForgetPassword:Landroid/widget/TextView;

    new-instance v6, Lcom/miui/cloudservice/authenticator/AddAccountActivity$ForgetPasswordClickListener;

    invoke-direct {v6, p0, v7}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$ForgetPasswordClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Lcom/miui/cloudservice/authenticator/AddAccountActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v5, 0x7f090006

    invoke-virtual {p0, v5}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mCreateAccount:Landroid/widget/LinearLayout;

    .line 72
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mCreateAccount:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;

    invoke-direct {v6, p0, v7}, Lcom/miui/cloudservice/authenticator/AddAccountActivity$CreateClickListener;-><init>(Lcom/miui/cloudservice/authenticator/AddAccountActivity;Lcom/miui/cloudservice/authenticator/AddAccountActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 75
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "username"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, username:Ljava/lang/String;
    const-string v5, "showDetail"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mShowAccountDetail:Z

    .line 77
    if-eqz v4, :cond_0

    .line 78
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v5, p0, Lcom/miui/cloudservice/authenticator/AddAccountActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0
.end method
