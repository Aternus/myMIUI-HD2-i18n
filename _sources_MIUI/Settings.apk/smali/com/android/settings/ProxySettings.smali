.class public Lcom/android/settings/ProxySettings;
.super Landroid/preference/PreferenceActivity;
.source "ProxySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mEnabled:Landroid/preference/CheckBoxPreference;

.field private mHost:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mWifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    sget-object v0, Lcom/android/settings/ProxySettings;->sNotSet:Ljava/lang/String;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private checkPort(Ljava/lang/String;)Z
    .locals 4
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    .line 115
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    .local v1, p:I
    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    .line 118
    .end local v1           #p:I
    :goto_0
    return v2

    .restart local v1       #p:I
    :cond_0
    move v2, v3

    .line 116
    goto :goto_0

    .line 117
    .end local v1           #p:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 118
    goto :goto_0
.end method

.method private fill()V
    .locals 5

    .prologue
    const-string v4, ""

    .line 56
    invoke-static {p0}, Landroid/net/Proxy;->isProxyForWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 57
    .local v1, wifiOnly:Z
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mEnabled:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/net/Proxy;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    if-eqz v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-static {p0, v4}, Landroid/net/Proxy;->getWifiHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 66
    :goto_0
    if-eqz v1, :cond_1

    .line 67
    const-string v2, ""

    invoke-static {p0, v4}, Landroid/net/Proxy;->getWifiPort(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, port:I
    :goto_1
    if-lez v0, :cond_2

    .line 72
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 77
    :goto_2
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ProxySettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ProxySettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 62
    .end local v0           #port:I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .restart local v0       #port:I
    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/ProxySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProxySettings;->sNotSet:Ljava/lang/String;

    .line 44
    const-string v0, "enable_proxy"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ProxySettings;->mEnabled:Landroid/preference/CheckBoxPreference;

    .line 45
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ProxySettings;->mWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 46
    const-string v0, "proxy_host"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    .line 47
    const-string v0, "proxy_port"

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/ProxySettings;->mEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/ProxySettings;->mWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ProxySettings;->fill()V

    .line 53
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/ProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 91
    .local v4, r:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 93
    .local v1, enabled:Z
    const-string v5, "http_proxy_enabled"

    if-eqz v1, :cond_1

    move v6, v7

    :goto_0
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/ProxySettings;->fill()V

    .line 110
    .end local v1           #enabled:Z
    :cond_0
    :goto_1
    return v7

    .restart local v1       #enabled:Z
    :cond_1
    move v6, v8

    .line 93
    goto :goto_0

    .line 98
    .end local v1           #enabled:Z
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mWifiOnly:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_4

    .line 99
    const-string v5, "http_proxy_wifi_only"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_2
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    .line 100
    .restart local p2
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_5

    .line 101
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 102
    .local v2, host:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/ProxySettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/settings/ProxySettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    .end local v2           #host:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_0

    .line 105
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 106
    .local v3, port:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/ProxySettings;->checkPort(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v3

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/settings/ProxySettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v5, p0, Lcom/android/settings/ProxySettings;->mHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/settings/ProxySettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_6
    const-string v6, ""

    goto :goto_3
.end method
