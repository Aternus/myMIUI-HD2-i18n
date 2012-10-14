.class public Lcom/android/settings/ConfirmLockPattern;
.super Landroid/app/Activity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$5;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# instance fields
.field protected mClearPatternRunnable:Ljava/lang/Runnable;

.field protected mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field protected mEmergencyCall:Landroid/widget/Button;

.field protected mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field protected mFooterWrongText:Ljava/lang/CharSequence;

.field protected mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field protected mHeaderWrongText:Ljava/lang/CharSequence;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field protected mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    .line 221
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$2;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 238
    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected getDefaultUnlockString()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f090249

    return v0
.end method

.method protected getInStealthMode()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLockPatternListener()Lcom/android/internal/widget/LockPatternView$OnPatternListener;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$3;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-object v0
.end method

.method protected getTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 275
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 277
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$4;-><init>(Lcom/android/settings/ConfirmLockPattern;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 296
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->requestWindowFeature(I)Z

    .line 79
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->setContentView(I)V

    .line 81
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 83
    const v1, 0x7f0c0032

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    .line 86
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setCompoundDrawableCompactMode(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/ConfirmLockPattern$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmLockPattern$1;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 101
    .local v0, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->parseIntent(Landroid/content/Intent;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getLockPatternListener()Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 108
    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v1, "num_wrong_attempts"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->onCreateNoSavedState()V

    goto :goto_0
.end method

.method protected onCreateNoSavedState()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 160
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 168
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 150
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 141
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 142
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 143
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 145
    :cond_0
    return-void
.end method

.method protected postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 231
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    const/4 v2, 0x1

    .line 179
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$5;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getInStealthMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getDefaultUnlockString()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f09024a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 213
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
