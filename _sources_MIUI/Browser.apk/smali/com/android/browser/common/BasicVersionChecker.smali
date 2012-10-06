.class public abstract Lcom/android/browser/common/BasicVersionChecker;
.super Ljava/lang/Object;
.source "BasicVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/BasicVersionChecker"

.field private static final PERF_KEY_FILENAME:Ljava/lang/String; = "versionpref"

.field private static final PERF_KEY_VERSION:Ljava/lang/String; = "prefVersion"

.field private static final PERF_KEY_VERSION_FIRSTUSAGE:Ljava/lang/String; = "prefVersionFirstUsage"

.field public static final REMOTE_VERSION:Ljava/lang/String; = "remote_version"

.field public static final TextKey_ProgressDialog_Downloading:I = 0xb

.field public static final TextKey_Result_FailedToUpgrade:I = 0xc

.field public static final TextKey_UpgradePromptDialog_Detail:I = 0x2

.field public static final TextKey_UpgradePromptDialog_MustUpgradeMsg:I = 0x5

.field public static final TextKey_UpgradePromptDialog_MustUpgradeNowMsg:I = 0x6

.field public static final TextKey_UpgradePromptDialog_NoButton:I = 0x4

.field public static final TextKey_UpgradePromptDialog_Title:I = 0x1

.field public static final TextKey_UpgradePromptDialog_YesButton:I = 0x3


# instance fields
.field protected mMustUpgrade:Z

.field protected mMustUpgradeAppVersion:I

.field protected mMustUpgradeDeadline:J

.field protected mRemoteAppVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    .line 43
    iput v0, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeAppVersion:I

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgrade:Z

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/common/BasicVersionChecker;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/browser/common/BasicVersionChecker;->startDownload(Landroid/app/Activity;)V

    return-void
.end method

.method public static canUpgrade(Lcom/android/browser/common/BasicVersionChecker;Landroid/content/Context;)Z
    .locals 5
    .parameter "checker"
    .parameter "context"

    .prologue
    .line 332
    invoke-static {p1}, Lcom/android/browser/common/BasicVersionChecker;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 333
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 334
    .local v1, pre:Landroid/content/SharedPreferences;
    const-string v3, "remote_version"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 335
    .local v2, remoteVersionCode:I
    if-eqz p0, :cond_0

    iget v3, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    if-gtz v3, :cond_0

    .line 336
    iput v2, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    .line 339
    :cond_0
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v3, v2, :cond_1

    .line 340
    const/4 v3, 0x1

    .line 341
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static getCurrentVersion(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    const/4 v1, -0x1

    .line 70
    .local v1, thisVersion:I
    invoke-static {p0}, Lcom/android/browser/common/BasicVersionChecker;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    .local v0, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 72
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 73
    :cond_0
    return v1
.end method

.method protected static getCurrentVersionUsageInHour(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 81
    const-string v7, "versionpref"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 82
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v7, "prefVersionFirstUsage"

    const-wide/16 v8, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 83
    .local v0, lastUsedTimestamp:J
    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v7

    sub-long v3, v7, v0

    .line 84
    .local v3, usage:J
    const-wide/32 v7, 0x36ee80

    div-long v5, v3, v7

    .line 85
    .local v5, usageInHour:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v7

    return v7
.end method

.method private getInfoView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 185
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, lInfoView:Landroid/widget/TextView;
    const/high16 v3, 0x4170

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 187
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 188
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 189
    const/16 v3, 0xc8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 191
    const/16 v3, 0x14

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/browser/common/BasicVersionChecker;->getUpgradeMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, detail:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v3, :cond_1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 199
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 204
    :goto_0
    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 202
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/common/BasicVersionChecker;->getUpgradeDeadlineInterval()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .parameter "context"

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 322
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 325
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "common/BasicVersionChecker"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logCurrentVersionFirstUsage(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const-string v7, "prefVersion"

    .line 57
    const-string v4, "versionpref"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "prefVersion"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, lastUsedVersion:I
    invoke-static {p0}, Lcom/android/browser/common/BasicVersionChecker;->getCurrentVersion(Landroid/content/Context;)I

    move-result v3

    .line 60
    .local v3, thisVersion:I
    if-eq v1, v3, :cond_0

    .line 61
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "prefVersionFirstUsage"

    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v4, "prefVersion"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private startDownload(Landroid/app/Activity;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 279
    const-string v0, ""

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 282
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    const/4 v8, 0x0

    .line 283
    .local v8, output:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, localFileName:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v4, v0}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 290
    :goto_0
    if-eqz v8, :cond_0

    .line 291
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 292
    .local v5, failedText:Ljava/lang/CharSequence;
    iget v0, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    invoke-virtual {p0, v0}, Lcom/android/browser/common/BasicVersionChecker;->getRemoteApkFileUrl(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, downloadUrl:Ljava/lang/String;
    new-instance v0, Lcom/android/browser/common/BasicVersionChecker$3;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/common/BasicVersionChecker$3;-><init>(Lcom/android/browser/common/BasicVersionChecker;Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {p1, v6, v8, v0}, Lcom/android/browser/common/Network;->beginDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;Lcom/android/browser/common/Network$PostDownloadHandler;)V

    .line 317
    .end local v5           #failedText:Ljava/lang/CharSequence;
    .end local v6           #downloadUrl:Ljava/lang/String;
    :cond_0
    return-void

    .line 286
    :catch_0
    move-exception v7

    .line 287
    .local v7, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkNewVersion(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "common/BasicVersionChecker"

    .line 96
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/android/browser/common/BasicVersionChecker;->getVersionableFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/android/browser/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, xml:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    new-instance v2, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;

    invoke-direct {v2}, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;-><init>()V

    .line 99
    .local v2, remoteVersion:Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;
    invoke-virtual {v2, v3}, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;->parseXML(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;->getAppVersion()I

    move-result v4

    iput v4, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    .line 101
    invoke-virtual {v2}, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;->getMustUpgradeVer()I

    move-result v4

    iput v4, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeAppVersion:I

    .line 102
    invoke-virtual {v2}, Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;->getMustUpgradeDeadline()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    .line 103
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 104
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "remote_version"

    iget v5, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #remoteVersion:Lcom/android/browser/common/BasicVersionChecker$RemoteVersionParser;
    .end local v3           #xml:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 107
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 108
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v4, "common/BasicVersionChecker"

    const-string v4, "error in url..."

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 110
    .local v0, e:Ljava/io/IOException;
    const-string v4, "common/BasicVersionChecker"

    const-string v4, "error in downloading..."

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public abstract getLocalizedText(I)Ljava/lang/CharSequence;
.end method

.method public abstract getRemoteApkFileUrl(I)Ljava/lang/String;
.end method

.method protected getUpgradeDeadlineInterval()Ljava/lang/String;
    .locals 6

    .prologue
    .line 169
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 170
    .local v1, gc:Ljava/util/GregorianCalendar;
    iget-wide v2, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 171
    sget-object v2, Lcom/android/browser/common/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 173
    .local v0, format:Ljava/text/SimpleDateFormat;
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUpgradeMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "common/BasicVersionChecker"

    .line 217
    iget v2, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    invoke-virtual {p0, v2}, Lcom/android/browser/common/BasicVersionChecker;->getUpgradeMessageFile(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, lFileUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/android/browser/common/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 228
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 222
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v2, "common/BasicVersionChecker"

    const-string v2, "error in url..."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 223
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 224
    .local v0, e:Ljava/io/IOException;
    const-string v2, "common/BasicVersionChecker"

    const-string v2, "error in downloading..."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUpgradeMessageFile(I)Ljava/lang/String;
    .locals 1
    .parameter "remoteVersion"

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVersionableFileUrl()Ljava/lang/String;
.end method

.method public hasNewAppVersion(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-static {p1}, Lcom/android/browser/common/BasicVersionChecker;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 119
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    move v1, v3

    .line 125
    :goto_0
    return v1

    .line 121
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, p0, Lcom/android/browser/common/BasicVersionChecker;->mRemoteAppVersion:I

    if-lt v1, v2, :cond_1

    move v1, v3

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeAppVersion:I

    if-gt v1, v2, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgrade:Z

    move v1, v4

    .line 125
    goto :goto_0

    :cond_2
    move v1, v3

    .line 123
    goto :goto_1
.end method

.method public startUpgrade(Landroid/app/Activity;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/browser/common/BasicVersionChecker;->getInfoView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/browser/common/BasicVersionChecker$2;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/common/BasicVersionChecker$2;-><init>(Lcom/android/browser/common/BasicVersionChecker;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/browser/common/BasicVersionChecker;->getLocalizedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/browser/common/BasicVersionChecker$1;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/common/BasicVersionChecker$1;-><init>(Lcom/android/browser/common/BasicVersionChecker;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    .local v0, bld:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgrade:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/browser/common/BasicVersionChecker;->mMustUpgradeDeadline:J

    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 162
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 166
    .end local v0           #bld:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 160
    .restart local v0       #bld:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 164
    .end local v0           #bld:Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v1, "common/BasicVersionChecker"

    const-string v2, "the activity has been closed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startUpgradeDirectly(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/browser/common/BasicVersionChecker;->startDownload(Landroid/app/Activity;)V

    .line 182
    return-void
.end method
