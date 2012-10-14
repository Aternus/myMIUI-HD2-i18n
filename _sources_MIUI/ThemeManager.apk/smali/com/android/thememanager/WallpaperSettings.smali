.class public Lcom/android/thememanager/WallpaperSettings;
.super Landroid/preference/PreferenceActivity;
.source "WallpaperSettings.java"

# interfaces
.implements Lcom/miui/android/resourcebrowser/SDCardMonitor$SDCardStatusListener;


# instance fields
.field private mSDCardMonitor:Lcom/miui/android/resourcebrowser/SDCardMonitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/thememanager/WallpaperSettings;->addPreferencesFromResource(I)V

    .line 18
    invoke-static {p0}, Lcom/miui/android/resourcebrowser/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/android/resourcebrowser/SDCardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lcom/miui/android/resourcebrowser/SDCardMonitor;

    .line 19
    iget-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lcom/miui/android/resourcebrowser/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/android/resourcebrowser/SDCardMonitor;->addListener(Lcom/miui/android/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/thememanager/WallpaperSettings;->mSDCardMonitor:Lcom/miui/android/resourcebrowser/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/android/resourcebrowser/SDCardMonitor;->removeListener(Lcom/miui/android/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    .line 30
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 31
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 0
    .parameter "mount"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/miui/android/resourcebrowser/ResourceHelper;->exit(Landroid/app/Activity;)V

    .line 25
    return-void
.end method
