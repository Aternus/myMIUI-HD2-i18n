.class Lcom/android/settings/SystemSettings$UpdateWifiValueTask;
.super Landroid/os/AsyncTask;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateWifiValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SystemSettings;

.field private wifiValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/SystemSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->this$0:Lcom/android/settings/SystemSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;-><init>(Lcom/android/settings/SystemSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->this$0:Lcom/android/settings/SystemSettings;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lcom/android/settings/SystemSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 104
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    .line 105
    .local v1, ssid:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 107
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 111
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 112
    iput-object v1, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->wifiValue:Ljava/lang/String;

    .line 114
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->this$0:Lcom/android/settings/SystemSettings;

    const-string v2, "wifi_settings"

    invoke-virtual {v1, v2}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 119
    .local v0, wifiPref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->wifiValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->wifiValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->wifiValue:Ljava/lang/String;

    .line 99
    return-void
.end method
