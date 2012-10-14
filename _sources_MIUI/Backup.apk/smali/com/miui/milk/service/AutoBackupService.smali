.class public Lcom/miui/milk/service/AutoBackupService;
.super Landroid/app/Service;
.source "AutoBackupService.java"


# instance fields
.field protected mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudConnection:Landroid/content/ServiceConnection;

.field protected mCloudDataLabel:[Ljava/lang/CharSequence;

.field private mCloudService:Lcom/miui/milk/service/CloudBackupService;

.field private mDefaultSharedPref:Landroid/content/SharedPreferences;

.field private mIsBoundCloud:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    new-instance v0, Lcom/miui/milk/service/AutoBackupService$1;

    invoke-direct {v0, p0}, Lcom/miui/milk/service/AutoBackupService$1;-><init>(Lcom/miui/milk/service/AutoBackupService;)V

    iput-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/milk/service/AutoBackupService;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/milk/service/AutoBackupService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/milk/service/AutoBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/milk/service/AutoBackupService;->runBackup()V

    return-void
.end method

.method private prepareAdapterItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mAppInfos:Ljava/util/ArrayList;

    .line 57
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 58
    new-instance v0, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v0}, Lcom/miui/milk/common/AppInfo;-><init>()V

    .line 59
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 60
    const/4 v2, 0x2

    iput v2, v0, Lcom/miui/milk/common/AppInfo;->type:I

    .line 61
    sget-object v2, Lcom/miui/milk/common/Constants;->SYSTEM_DATA:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 63
    const-string v2, "ADDRESSBOOK"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "auto_backup_choose_addressbook"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 75
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const-string v2, "CALLLOG"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "auto_backup_choose_calllog"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 67
    :cond_2
    const-string v2, "SMS"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "auto_backup_choose_sms"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 69
    :cond_3
    const-string v2, "WIFI"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "auto_backup_choose_wifi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 71
    :cond_4
    const-string v2, "NOTE"

    iget-object v3, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "auto_backup_choose_note"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    goto :goto_1

    .line 77
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    :cond_5
    return-void
.end method

.method private runBackup()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "AutoBackupService"

    .line 80
    const-string v0, "AutoBackupService"

    const-string v0, "run auto backup action"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "auto_backup_only_wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/milk/util/SysHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "AutoBackupService"

    const-string v0, "auto backup only wifi but no wifi"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060055

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudService:Lcom/miui/milk/service/CloudBackupService;

    iget-object v1, p0, Lcom/miui/milk/service/AutoBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/milk/service/CloudBackupService;->runAutoBackup(Ljava/util/ArrayList;)J

    goto :goto_0
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/milk/service/CloudBackupService;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    .line 125
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/AutoBackupService;->doUnbindService(Landroid/content/Context;)V

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 42
    const-string v0, "AutoBackupService"

    const-string v1, "on start AutoBackupService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/AutoBackupService;->doBindService(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mCloudDataLabel:[Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0}, Lcom/miui/milk/service/AutoBackupService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/service/AutoBackupService;->mDefaultSharedPref:Landroid/content/SharedPreferences;

    .line 46
    invoke-direct {p0}, Lcom/miui/milk/service/AutoBackupService;->prepareAdapterItems()V

    .line 47
    iget-boolean v0, p0, Lcom/miui/milk/service/AutoBackupService;->mIsBoundCloud:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/miui/milk/service/AutoBackupService;->runBackup()V

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
