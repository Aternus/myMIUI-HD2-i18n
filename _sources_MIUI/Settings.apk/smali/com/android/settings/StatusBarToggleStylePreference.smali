.class public Lcom/android/settings/StatusBarToggleStylePreference;
.super Landroid/preference/Preference;
.source "StatusBarToggleStylePreference.java"


# instance fields
.field private mCompact:Landroid/view/View;

.field private mCompactText:Landroid/view/View;

.field private mOnStyleClickListener:Landroid/view/View$OnClickListener;

.field private mSinglePage:Landroid/view/View;

.field private mSinglePageText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/android/settings/StatusBarToggleStylePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/StatusBarToggleStylePreference$1;-><init>(Lcom/android/settings/StatusBarToggleStylePreference;)V

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    .line 21
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleStylePreference;->setLayoutResource(I)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePageText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompact:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/StatusBarToggleStylePreference;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/StatusBarToggleStylePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->setSettingsFromUI()V

    return-void
.end method

.method private setSettingsFromUI()V
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->getStyle()I

    move-result v2

    .line 49
    .local v2, origStyle:I
    iget-object v3, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v1, v3

    .line 51
    .local v1, newStyle:I
    :goto_0
    if-eq v2, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_style"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 57
    .local v0, curConfig:Landroid/content/res/Configuration;
    const-wide/16 v3, 0x2000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Configuration;->updateTheme(J)V

    .line 58
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/StatusBarToggleStylePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void

    .line 49
    .end local v1           #newStyle:I
    :cond_1
    const/4 v3, 0x1

    move v1, v3

    goto :goto_0

    .line 59
    .restart local v1       #newStyle:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private setUIFromSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->getStyle()I

    move-result v0

    .line 75
    .local v0, style:I
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePageText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePageText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getStyle()I
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style"

    invoke-static {}, Landroid/provider/Settings$System;->getDefaultStatusBarStyle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/StatusBarToggleStylePreference;->setSelectable(Z)V

    .line 37
    const v0, 0x7f0c012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompact:Landroid/view/View;

    .line 38
    const v0, 0x7f0c012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompactText:Landroid/view/View;

    .line 39
    const v0, 0x7f0c012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePage:Landroid/view/View;

    .line 40
    const v0, 0x7f0c012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePageText:Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/StatusBarToggleStylePreference;->setUIFromSettings()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mCompact:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mSinglePage:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/StatusBarToggleStylePreference;->mOnStyleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
