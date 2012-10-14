.class public Lcom/miui/backup/BackupActivity;
.super Landroid/app/TabActivity;
.source "BackupActivity.java"


# instance fields
.field private mCloudConnection:Landroid/content/ServiceConnection;

.field private mCloudService:Lcom/miui/milk/service/CloudBackupService;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsBoundCloud:Z

.field private mIsBoundLocal:Z

.field private mLocalConnection:Landroid/content/ServiceConnection;

.field private mLocalService:Lcom/miui/backup/BackupService;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/BackupActivity;->mIsBoundLocal:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;

    .line 92
    new-instance v0, Lcom/miui/backup/BackupActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/backup/BackupActivity$2;-><init>(Lcom/miui/backup/BackupActivity;)V

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalConnection:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Lcom/miui/backup/BackupActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/backup/BackupActivity$3;-><init>(Lcom/miui/backup/BackupActivity;)V

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mCloudConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/BackupActivity;)Lcom/miui/backup/BackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/backup/BackupActivity;)Lcom/miui/milk/service/CloudBackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/backup/BackupActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/miui/backup/BackupActivity;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method private setupCloudBackupTab()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-class v1, Lcom/miui/milk/ui/CloudBackupMain;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "cloud"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {p0, v3}, Lcom/miui/backup/BackupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 85
    return-void
.end method

.method private setupLocalBackupTab()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v1, Lcom/miui/backup/ui/LocalBackupMain;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "local"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/miui/backup/BackupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    return-void
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const-class v4, Lcom/miui/milk/service/CloudBackupService;

    const-class v3, Lcom/miui/backup/BackupService;

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mLocalConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/BackupActivity;->mIsBoundLocal:Z

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/BackupActivity;->mCloudConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/BackupActivity;->mIsBoundCloud:Z

    .line 132
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-boolean v0, p0, Lcom/miui/backup/BackupActivity;->mIsBoundLocal:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mLocalConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    iput-boolean v1, p0, Lcom/miui/backup/BackupActivity;->mIsBoundLocal:Z

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/miui/backup/BackupActivity;->mIsBoundCloud:Z

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mCloudConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    iput-boolean v1, p0, Lcom/miui/backup/BackupActivity;->mIsBoundCloud:Z

    .line 143
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    .line 39
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-direct {p0}, Lcom/miui/backup/BackupActivity;->setupLocalBackupTab()V

    .line 42
    invoke-direct {p0}, Lcom/miui/backup/BackupActivity;->setupCloudBackupTab()V

    .line 44
    iget-object v0, p0, Lcom/miui/backup/BackupActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupActivity;->doUnbindService(Landroid/content/Context;)V

    .line 70
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 50
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 51
    .local v0, securityHelper:Landroid/security/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 52
    .local v1, util:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPrivacyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06009a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/miui/backup/BackupActivity$1;

    invoke-direct {v4, p0}, Lcom/miui/backup/BackupActivity$1;-><init>(Lcom/miui/backup/BackupActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/miui/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/backup/BackupActivity;->doBindService(Landroid/content/Context;)V

    goto :goto_0
.end method
