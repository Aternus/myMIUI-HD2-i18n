.class public Lcom/android/settings/cit/CitChargerPluginCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitChargerPluginCheckActivity.java"


# static fields
.field private static final AC_ONLINE:Ljava/lang/String; = "/sys/class/power_supply/ac/online"

.field private static final USB_ONLINE:Ljava/lang/String; = "/sys/class/power_supply/usb/online"


# instance fields
.field protected mChargerStateUpdater:Ljava/lang/Runnable;

.field protected final mHandler:Landroid/os/Handler;

.field protected mStopUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Lcom/android/settings/cit/CitChargerPluginCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity$1;-><init>(Lcom/android/settings/cit/CitChargerPluginCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mChargerStateUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const v0, 0x7f09051a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readChargerState(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read current string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 73
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    :goto_0
    return v3

    .line 68
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 69
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 71
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const v0, 0x7f090532

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAcChargerAvailable()Z
    .locals 1

    .prologue
    .line 77
    const-string v0, "/sys/class/power_supply/ac/online"

    invoke-direct {p0, v0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->readChargerState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isUsbChargerAvailable()Z
    .locals 1

    .prologue
    .line 81
    const-string v0, "/sys/class/power_supply/usb/online"

    invoke-direct {p0, v0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->readChargerState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mStopUpdate:Z

    .line 36
    iget-object v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mChargerStateUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mStopUpdate:Z

    .line 42
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method protected updateChargerState()V
    .locals 5

    .prologue
    const-string v2, "\n"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->isAcChargerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const v1, 0x7f09056a

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->isUsbChargerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const v1, 0x7f09056b

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 95
    const v1, 0x7f090569

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean v1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mStopUpdate:Z

    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->mChargerStateUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_3
    return-void
.end method
