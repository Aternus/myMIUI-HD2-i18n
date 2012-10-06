.class public Lcom/miui/player/MPlayerVersionChecker;
.super Lcom/xiaomi/common/BasicVersionChecker;
.source "MPlayerVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;
    }
.end annotation


# static fields
.field public static final KEY_SERVER_URL:Ljava/lang/String; = "remote_server_url"

.field public static final KEY_UPGRADE_MSG:Ljava/lang/String; = "upgrade_msg"

.field public static final KEY_VERSION:Ljava/lang/String; = "remote_version"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServerUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/miui/player/MPlayerVersionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/MPlayerVersionChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "serverUrl"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xiaomi/common/BasicVersionChecker;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/miui/player/MPlayerVersionChecker;->mServerUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/MPlayerVersionChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/MPlayerVersionChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/xiaomi/common/BasicVersionChecker;->mRemoteAppVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/player/MPlayerVersionChecker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/MPlayerVersionChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/xiaomi/common/BasicVersionChecker;->mRemoteAppVersion:I

    return v0
.end method


# virtual methods
.method public getLocalizedText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "key"

    .prologue
    .line 40
    packed-switch p1, :pswitch_data_0

    .line 55
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_3
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_5
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_6
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getRemoteApkFileUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "remoteVersion"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpgradeMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "remoteVersion"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, lLocale:Ljava/lang/String;
    const-string v3, "%s/MPlayer-v%d-%s.txt?uuid=player_debug"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/player/MPlayerVersionChecker;->mServerUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, lFileUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/xiaomi/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 87
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 81
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v3, Lcom/miui/player/MPlayerVersionChecker;->TAG:Ljava/lang/String;

    const-string v4, "error in url..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 82
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/miui/player/MPlayerVersionChecker;->TAG:Ljava/lang/String;

    const-string v4, "error in downloading..."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getVersionableFileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/player/MPlayerVersionChecker;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android.xml?uuid=player_debug"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startUpgrade(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    new-instance v0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;

    invoke-direct {v0, p0}, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;-><init>(Lcom/miui/player/MPlayerVersionChecker;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method
