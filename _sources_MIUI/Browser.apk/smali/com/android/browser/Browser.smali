.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# static fields
.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final STAT_CHANNEL:Ljava/lang/String; = "miuibrowser"

.field private static final TARGET_HEAP_UTILIZATION:F = 0.75f

.field public static final YELLOWPAGE_UPDATE_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 29
    return-void
.end method

.method static createBrowserViewIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x1400000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 35
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 38
    invoke-static {v3}, Landroid/webkit/CacheManager;->setSdcardCacheDisabled(Z)V

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebSettings;->BRING_FLASH_TO_TOP:Z

    .line 40
    sput-boolean v3, Landroid/webkit/WebSettings;->ENALBE_SNAPSHOT_RENDERER:Z

    .line 41
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 43
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 44
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/BrowserSettings;->loadFromDb(Landroid/content/Context;)V

    .line 45
    return-void
.end method
