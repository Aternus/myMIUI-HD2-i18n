.class Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemSettingContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getMaxDownloadsFromSetting(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCount:I

    .line 143
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getIsDownloadOnlyOnWifiFromSetting(Landroid/content/ContentResolver;)Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/downloads/Helpers;->sDownloadOnlyOnWifi:Z

    .line 144
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getMaxDownloadsPerDomainFromSetting(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCountPerDomain:I

    .line 145
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;->this$0:Lcom/android/providers/downloads/DownloadService;

    #calls: Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V

    .line 146
    return-void
.end method
