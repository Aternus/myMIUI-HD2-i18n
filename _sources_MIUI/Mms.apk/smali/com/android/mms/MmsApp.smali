.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 86
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 54
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 57
    const v0, 0x7f050007

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 59
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 60
    invoke-static {p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 64
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 65
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 67
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->init(Landroid/content/Context;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/MmsApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    invoke-static {p0}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 81
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->terminate(Landroid/content/Context;)V

    .line 82
    return-void
.end method
