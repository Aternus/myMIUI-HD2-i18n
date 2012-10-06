.class public Lcom/android/fileexplorer/ServerControlActivity;
.super Landroid/app/Activity;
.source "ServerControlActivity.java"


# instance fields
.field protected activityContext:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field private instructionText:Landroid/widget/TextView;

.field private instructionTextPre:Landroid/widget/TextView;

.field private ipText:Landroid/widget/TextView;

.field protected myLog:Lorg/swiftp/MyLog;

.field private startStopButton:Landroid/view/View;

.field startStopListener:Landroid/view/View$OnClickListener;

.field wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lorg/swiftp/MyLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/MyLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    .line 40
    iput-object p0, p0, Lcom/android/fileexplorer/ServerControlActivity;->activityContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$1;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$2;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopListener:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v0, Lcom/android/fileexplorer/ServerControlActivity$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/ServerControlActivity$3;-><init>(Lcom/android/fileexplorer/ServerControlActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/ServerControlActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/fileexplorer/ServerControlActivity;->warnIfNoExternalStorage()V

    return-void
.end method

.method private setText(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method private warnIfNoExternalStorage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 243
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, storageState:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning due to storage state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/swiftp/MyLog;->i(Ljava/lang/String;)V

    .line 246
    const v2, 0x7f06004b

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 247
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 248
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 250
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->requestWindowFeature(I)Z

    .line 75
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, myContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null context!?!?!?"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    invoke-static {v0}, Lorg/swiftp/Globals;->setContext(Landroid/content/Context;)V

    .line 85
    :cond_1
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->setContentView(I)V

    .line 87
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 131
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const/4 v1, 0x3

    const-string v2, "Unregistered for wifi updates"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lorg/swiftp/UiUpdater;->registerClient(Landroid/os/Handler;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 117
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const/4 v2, 0x3

    const-string v3, "Registered for wifi updates"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/fileexplorer/ServerControlActivity;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/ServerControlActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->registerClient(Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->updateUi()V

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 137
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/UiUpdater;->unregisterClient(Landroid/os/Handler;)V

    .line 138
    return-void
.end method

.method public updateUi()V
    .locals 10

    .prologue
    const v9, 0x7f060028

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const-string v1, "Updating UI"

    invoke-virtual {v0, v5, v1, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 154
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 156
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isWifiEnabled()Z

    move-result v1

    .line 160
    const v2, 0x7f080049

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/fileexplorer/ServerControlActivity;->setText(ILjava/lang/String;)V

    .line 161
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    if-eqz v1, :cond_4

    const v2, 0x7f020061

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isRunning()Z

    move-result v2

    .line 165
    if-eqz v2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->myLog:Lorg/swiftp/MyLog;

    const-string v3, "updateUi: server is running"

    invoke-virtual {v0, v5, v3, v4}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;Z)V

    .line 169
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_5

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftp://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->getPort()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->startStopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/ServerControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    if-eqz v1, :cond_9

    .line 186
    if-eqz v2, :cond_6

    const v1, 0x7f06004a

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    if-eqz v2, :cond_7

    const v1, 0x7f02001a

    :goto_5
    invoke-virtual {v0, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 189
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :goto_7
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    move v1, v7

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionText:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    move v1, v7

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->instructionTextPre:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    move v1, v8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    return-void

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/fileexplorer/ServerControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 162
    :cond_4
    const v2, 0x7f020060

    goto/16 :goto_2

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 179
    iget-object v0, p0, Lcom/android/fileexplorer/ServerControlActivity;->ipText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 186
    :cond_6
    const v1, 0x7f060049

    goto :goto_4

    .line 187
    :cond_7
    const v1, 0x7f020019

    goto :goto_5

    .line 189
    :cond_8
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_6

    .line 192
    :cond_9
    invoke-static {}, Lcom/android/fileexplorer/FTPServerService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    invoke-virtual {p0}, Lcom/android/fileexplorer/ServerControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/fileexplorer/FTPServerService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    invoke-virtual {v1, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 198
    :cond_a
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 200
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_b
    move v1, v8

    .line 203
    goto :goto_8

    :cond_c
    move v1, v8

    .line 204
    goto :goto_9

    :cond_d
    move v1, v7

    .line 205
    goto :goto_a
.end method
