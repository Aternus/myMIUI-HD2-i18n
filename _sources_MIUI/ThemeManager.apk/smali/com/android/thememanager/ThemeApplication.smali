.class public Lcom/android/thememanager/ThemeApplication;
.super Landroid/app/Application;
.source "ThemeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 30
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->initLanguage(Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-static {}, Lcom/android/thememanager/OnlineThemeJsonParser;->initDefaultParser()V

    .line 19
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/thememanager/ThemeHelper;->initResource(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreFromBackup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v0, backupFlagFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/thememanager/ThemeHelper;->updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 26
    :cond_0
    return-void
.end method
