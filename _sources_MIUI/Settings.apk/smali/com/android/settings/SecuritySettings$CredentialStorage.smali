.class Lcom/android/settings/SecuritySettings$CredentialStorage;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialStorage"
.end annotation


# instance fields
.field private mAccessCheckBox:Landroid/preference/CheckBoxPreference;

.field private mExternal:Z

.field private mInstallButton:Landroid/preference/Preference;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordButton:Landroid/preference/Preference;

.field private mResetButton:Landroid/preference/Preference;

.field private mShowingDialog:I

.field private mState:I

.field private mSubmit:Z

.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 204
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 207
    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->createPreferences(Landroid/preference/PreferenceCategory;I)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->password(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private checkError(Landroid/app/Dialog;I)Z
    .locals 6
    .parameter "dialog"
    .parameter "error"

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    if-ne p2, v5, :cond_0

    .line 333
    invoke-direct {p0, v5}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 351
    :goto_0
    return v1

    .line 336
    :cond_0
    if-ne p2, v2, :cond_1

    .line 337
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    move v1, v4

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    if-ge p2, v1, :cond_2

    move v1, v4

    .line 341
    goto :goto_0

    .line 343
    :cond_2
    sub-int v1, p2, v1

    add-int/lit8 v0, v1, 0x1

    .line 344
    .local v0, count:I
    if-le v0, v2, :cond_3

    .line 345
    const v1, 0x7f0903ee

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v1, v5

    .line 351
    goto :goto_0

    .line 346
    :cond_3
    if-ne v0, v5, :cond_4

    .line 347
    const v1, 0x7f0903ef

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 349
    :cond_4
    const v1, 0x7f0903f0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    const v3, 0x7f0c0056

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, oldPassword:Ljava/lang/String;
    const v3, 0x7f0c0057

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, newPassword:Ljava/lang/String;
    const v3, 0x7f0c0058

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->getText(Landroid/app/Dialog;I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, confirmPassword:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 311
    const v3, 0x7f0903f3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    move v3, v5

    .line 327
    :goto_0
    return v3

    .line 313
    :cond_0
    if-nez v1, :cond_2

    .line 314
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->unlock(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 316
    :cond_3
    const v3, 0x7f0903f2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    :goto_1
    move v3, v5

    .line 327
    goto :goto_0

    .line 317
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 318
    const v3, 0x7f0903f4

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 320
    const v3, 0x7f0903f1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 321
    :cond_6
    if-nez v2, :cond_7

    .line 322
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->initialize(Ljava/lang/String;)V

    move v3, v6

    .line 323
    goto :goto_0

    .line 325
    :cond_7
    invoke-direct {p0, v2, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->changePassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkError(Landroid/app/Dialog;I)Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v6

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private createPreferences(Landroid/preference/PreferenceCategory;I)V
    .locals 2
    .parameter "category"
    .parameter "type"

    .prologue
    .line 373
    packed-switch p2, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 375
    :pswitch_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    .line 376
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0903e0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    .line 382
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0903e3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    const v1, 0x7f0903e4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    .line 388
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0903e5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    const v1, 0x7f0903e6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    .line 394
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f0903e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    const v1, 0x7f0903e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getText(Landroid/app/Dialog;I)Ljava/lang/String;
    .locals 3
    .parameter "dialog"
    .parameter "viewId"

    .prologue
    .line 355
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 356
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 236
    return-void
.end method

.method private lock()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->lock()Z

    .line 245
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 246
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 240
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 241
    return-void
.end method

.method private varargs showError(Landroid/app/Dialog;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "dialog"
    .parameter "stringId"
    .parameter "formatArgs"

    .prologue
    .line 361
    const v1, 0x7f0c0054

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    .local v0, view:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 363
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_2

    .line 364
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 368
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :cond_1
    return-void

    .line 366
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPasswordDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 448
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 451
    .local v1, view:Landroid/view/View;
    iget v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 452
    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0903e5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 464
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 465
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    return-void

    .line 454
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 455
    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 471
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 478
    return-void
.end method

.method private showUnlockDialog()V
    .locals 5

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, view:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v2, :cond_0

    .line 433
    const v2, 0x7f0c0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0903e1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 442
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 443
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mShowingDialog:I

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 445
    return-void
.end method

.method private unlock(Ljava/lang/String;)I
    .locals 1
    .parameter "password"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 250
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    return v0
.end method

.method private updatePreferences(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-eq p1, v4, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-eq p1, v4, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 412
    iget v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    if-ne v0, p1, :cond_3

    .line 425
    :goto_3
    return-void

    :cond_0
    move v1, v2

    .line 404
    goto :goto_0

    :cond_1
    move v1, v2

    .line 406
    goto :goto_1

    :cond_2
    move v1, v2

    .line 407
    goto :goto_2

    .line 414
    :cond_3
    if-ne p1, v3, :cond_5

    .line 415
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f0903f6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    :cond_4
    :goto_4
    iput p1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    goto :goto_3

    .line 417
    :cond_5
    if-ne p1, v4, :cond_6

    .line 418
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f0903f5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 420
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    const v1, 0x7f0903f7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 284
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 285
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->reset()V

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 291
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mSubmit:Z

    .line 293
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->checkPassword(Landroid/app/Dialog;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 299
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mAccessCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 260
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    :goto_0
    move v0, v1

    .line 267
    :goto_1
    return v0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->lock()V

    goto :goto_0

    .restart local p2
    :cond_1
    move v0, v1

    .line 267
    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mInstallButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 272
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->installFromSdCard(Landroid/content/Context;)V

    .line 280
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mPasswordButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mResetButton:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showResetDialog()V

    goto :goto_0

    .line 278
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method resume()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->test()I

    move-result v1

    iput v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    .line 217
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->updatePreferences(I)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "android.credentials.UNLOCK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mExternal:Z

    .line 223
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showPasswordDialog()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$CredentialStorage;->showUnlockDialog()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$CredentialStorage;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->finish()V

    goto :goto_0
.end method
