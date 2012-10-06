.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/app/Activity;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const v1, 0x7f09024b

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->showError(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/high16 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 52
    .local v2, storedQuality:I
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 57
    const v3, 0x7f0c002d

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 58
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    const v3, 0x7f0c002e

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 62
    const v3, 0x7f0c002b

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 63
    const/high16 v3, 0x4

    if-eq v3, v2, :cond_0

    const/high16 v3, 0x5

    if-ne v3, v2, :cond_2

    :cond_0
    move v1, v7

    .line 65
    .local v1, isAlpha:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x7f090497

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    new-instance v3, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 68
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x1070013

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 71
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_4

    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 83
    :cond_1
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isAlpha:Z
    :cond_2
    move v1, v6

    .line 63
    goto :goto_0

    .restart local v1       #isAlpha:Z
    :cond_3
    move v4, v6

    .line 68
    goto :goto_1

    :cond_4
    move v4, v7

    .line 71
    goto :goto_2
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$1;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initViews()V

    .line 48
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 96
    return-void
.end method
