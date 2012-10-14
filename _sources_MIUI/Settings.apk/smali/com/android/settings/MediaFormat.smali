.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090214

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 99
    const v1, 0x7f090217

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 101
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 102
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 134
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0c00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 157
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 55
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090219

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09021a

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

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
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 73
    :cond_1
    if-nez p2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 166
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 178
    return-void
.end method
