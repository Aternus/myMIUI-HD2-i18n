.class public Lcom/android/settings/ChooseAccessControl;
.super Lcom/android/settings/ChooseLockPattern;
.source "ChooseAccessControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateNoSavedState()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseAccessControl;->updateStage(Lcom/android/settings/ChooseLockPattern$Stage;)V

    .line 19
    return-void
.end method

.method protected preSetupViews()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    const v1, 0x7f0900d0

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    .line 24
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 28
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 30
    .local v0, utils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveACLockPattern(Ljava/util/List;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setACLockEnabled(Z)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseAccessControl;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/ChooseAccessControl;->finish()V

    .line 35
    return-void
.end method
