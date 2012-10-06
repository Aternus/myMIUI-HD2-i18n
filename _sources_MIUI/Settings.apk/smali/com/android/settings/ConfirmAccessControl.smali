.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# instance fields
.field private mConfirmPrivacy:Z

.field private mNoBack:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/settings/ConfirmAccessControl;->mConfirmPrivacy:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmAccessControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmAccessControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mConfirmPrivacy:Z

    return v0
.end method

.method private addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    const-string v6, "[icon]"

    .line 123
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const-string v2, "[icon]"

    .line 125
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "[icon]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    .local v3, patternSize:I
    const/4 v4, 0x0

    .line 128
    .local v4, start:I
    const-string v5, "[icon]"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10803d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int v6, v4, v3

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 135
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getDefaultUnlockString()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x7f0900cd

    return v0
.end method

.method protected getInStealthMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "access_control_visible_pattern"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLockPatternListener()Lcom/android/internal/widget/LockPatternView$OnPatternListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/android/settings/ConfirmAccessControl$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmAccessControl$1;-><init>(Lcom/android/settings/ConfirmAccessControl;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-object v0
.end method

.method protected getTactileFeedbackEnabled()Z
    .locals 3

    .prologue
    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "access_control_vibrant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onBackPressed()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onCreateNoSavedState()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedAccessControlExists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmAccessControl;->setResult(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mConfirmPrivacy:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPrivacyModeEnabled(Z)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 67
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmAccessControl;->parseIntent(Landroid/content/Intent;)V

    .line 142
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmAccessControl;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 143
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onStop()V

    .line 34
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 37
    :cond_0
    return-void
.end method

.method protected parseIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const v9, 0x7f0900ce

    const v8, 0x7f0900cd

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    if-eqz p1, :cond_2

    .line 82
    const-string v4, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 83
    const-string v4, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 84
    const-string v4, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 85
    const-string v4, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 86
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    .line 87
    const-string v4, "com.android.settings.ConfirmLockPattern.confirm_privacy"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/ConfirmAccessControl;->mConfirmPrivacy:Z

    .line 88
    iput-boolean v6, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    .line 89
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 90
    iput-boolean v7, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 94
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 100
    .local v2, name:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 110
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #name:Ljava/lang/CharSequence;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v4, :cond_1

    .line 111
    const v4, 0x7f0900cf

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmAccessControl;->addHomeSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 114
    :cond_1
    const-string v4, "com.android.contacts"

    iget-object v5, p0, Lcom/android/settings/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    :cond_2
    :goto_2
    return-void

    .line 95
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 96
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #info:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 105
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/ConfirmAccessControl;->mConfirmPrivacy:Z

    if-eqz v4, :cond_0

    .line 106
    const v4, 0x10403ac

    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v9, v5}, Lcom/android/settings/ConfirmAccessControl;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/ConfirmAccessControl;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 117
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern;->mEmergencyCall:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method
