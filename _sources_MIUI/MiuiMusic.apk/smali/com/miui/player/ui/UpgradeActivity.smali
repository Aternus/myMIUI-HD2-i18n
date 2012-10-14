.class public Lcom/miui/player/ui/UpgradeActivity;
.super Landroid/app/Activity;
.source "UpgradeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/miui/player/ui/UpgradeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/ui/UpgradeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteApkFileUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "serverUrl"
    .parameter "remoteVersion"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    sget-boolean v0, Lcom/miui/player/BuildSettings;->IsDefaultChannel:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "%s/MPlayer-v%d.apk"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s/MPlayer-%s.apk"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "@SHIP.TO.2A2FE0D7@"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/UpgradeActivity;->requestWindowFeature(I)Z

    .line 34
    const v7, 0x7f030038

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/UpgradeActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/player/ui/UpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 37
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "remote_server_url"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, serverUrl:Ljava/lang/String;
    const-string v7, "remote_version"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 39
    .local v3, remoteVersion:I
    const-string v7, "upgrade_msg"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, upgradeMessage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-gez v3, :cond_1

    .line 42
    :cond_0
    sget-object v7, Lcom/miui/player/ui/UpgradeActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid upgrade call: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/miui/player/ui/UpgradeActivity;->finish()V

    .line 46
    :cond_1
    const v7, 0x7f0c00b9

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 47
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v7, 0x7f0c00ba

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, ok:Landroid/view/View;
    new-instance v7, Lcom/miui/player/ui/UpgradeActivity$1;

    invoke-direct {v7, p0, v4, v3}, Lcom/miui/player/ui/UpgradeActivity$1;-><init>(Lcom/miui/player/ui/UpgradeActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v7, 0x7f0c00bb

    invoke-virtual {p0, v7}, Lcom/miui/player/ui/UpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, cancel:Landroid/view/View;
    new-instance v7, Lcom/miui/player/ui/UpgradeActivity$2;

    invoke-direct {v7, p0}, Lcom/miui/player/ui/UpgradeActivity$2;-><init>(Lcom/miui/player/ui/UpgradeActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method protected startDownload(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "serverUrl"
    .parameter "remoteVersion"

    .prologue
    const/4 v7, 0x1

    .line 68
    const-string v5, ""

    const v6, 0x7f080083

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/UpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 71
    .local v4, progressDialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x0

    .line 72
    .local v3, output:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, localFileName:Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v2, v5}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_0
    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, p2, p3}, Lcom/miui/player/ui/UpgradeActivity;->getRemoteApkFileUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, downloadUrl:Ljava/lang/String;
    new-instance v5, Lcom/miui/player/ui/UpgradeActivity$3;

    invoke-direct {v5, p0, p1, v4, v2}, Lcom/miui/player/ui/UpgradeActivity$3;-><init>(Lcom/miui/player/ui/UpgradeActivity;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-static {v0, v3, v5}, Lcom/xiaomi/common/Network;->beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/common/Network$PostDownloadHandler;)V

    .line 101
    .end local v0           #downloadUrl:Ljava/lang/String;
    :cond_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
