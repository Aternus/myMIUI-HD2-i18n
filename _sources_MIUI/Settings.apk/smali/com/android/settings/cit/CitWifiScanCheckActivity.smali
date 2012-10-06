.class public Lcom/android/settings/cit/CitWifiScanCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitWifiScanCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;
    }
.end annotation


# instance fields
.field private mApScanResult:Landroid/widget/TextView;

.field private mButtonPass:Landroid/widget/Button;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanRetry:Landroid/widget/Button;

.field private mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mApScanResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/cit/CitWifiScanCheckActivity;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 129
    const v0, 0x7f09050b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAccessPoints()V
    .locals 6

    .prologue
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 93
    .local v1, result:Landroid/net/wifi/ScanResult;
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 97
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    const-string v4, "SSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  SECURITY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  RSSI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mApScanResult:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/android/settings/cit/CitWifiScanCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    const v0, 0x7f090524

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f03001b

    return v0
.end method

.method public initResources()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    .line 41
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mApScanResult:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanRetry:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$1;-><init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/android/settings/cit/CitWifiScanCheckActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$2;-><init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    new-instance v0, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;-><init>(Lcom/android/settings/cit/CitWifiScanCheckActivity;Lcom/android/settings/cit/CitWifiScanCheckActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->stop()V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cit/CitWifiScanCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mScanner:Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitWifiScanCheckActivity$Scanner;->scan()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/cit/CitWifiScanCheckActivity;->mButtonPass:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    return-void
.end method
