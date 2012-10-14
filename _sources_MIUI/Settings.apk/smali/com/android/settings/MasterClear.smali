.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Activity;
.source "MasterClear.java"


# instance fields
.field private mFinalClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mWipeAll:Z

.field private mWipeAllButton:Landroid/widget/Button;

.field private mWipeDataButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mWipeAll:Z

    .line 56
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mWipeAll:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mWipeAll:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mWipeAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090209

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v1, 0x7f090211

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 124
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 125
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mFinalClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 143
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0c00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mWipeAllButton:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mWipeAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isOperatorCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mWipeDataButton:Landroid/widget/Button;

    .line 158
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mWipeDataButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterClear;->setContentView(Landroid/view/View;)V

    .line 160
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    goto :goto_0
.end method

.method private isOperatorCustomized()Z
    .locals 3

    .prologue
    .line 184
    const-string v0, "/data/media/customized/operator.retained.list"

    .line 185
    .local v0, OPERATOR_FILE_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 77
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090212

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090213

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterClear;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/security/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 87
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishFinalConfirmationState()V

    goto :goto_0

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->finish()V

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitialView:Landroid/view/View;

    .line 167
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 181
    return-void
.end method
