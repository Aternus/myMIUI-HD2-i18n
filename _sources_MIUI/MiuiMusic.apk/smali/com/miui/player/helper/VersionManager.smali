.class public Lcom/miui/player/helper/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/VersionManager$VersionInfo;
    }
.end annotation


# static fields
.field private static final LAST_VERSION_PREFERENCE:Ljava/lang/String; = "last_version_preference"

.field private static final MAIN_VERSION_OFFET:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "com.miui.player.helper.VersionManager"


# instance fields
.field private mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/player/helper/VersionManager;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 32
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_0

    .line 33
    const-string v3, "com.miui.player.helper.VersionManager"

    const-string v4, "get package info failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v1, v3

    .line 38
    .local v1, mainVersion:I
    mul-int/lit16 v3, v1, 0x3e8

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    add-int v0, v3, v4

    .line 40
    .local v0, currentVersion:I
    new-instance v3, Lcom/miui/player/helper/VersionManager$VersionInfo;

    invoke-direct {v3, p0}, Lcom/miui/player/helper/VersionManager$VersionInfo;-><init>(Lcom/miui/player/helper/VersionManager;)V

    iput-object v3, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    .line 42
    iget-object v3, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    invoke-static {p1}, Lcom/miui/player/helper/VersionManager;->getVersionNum(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Lcom/miui/player/helper/VersionManager$VersionInfo;->oldVersion:I

    .line 43
    iget-object v3, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iput v0, v3, Lcom/miui/player/helper/VersionManager$VersionInfo;->newVersion:I

    .line 44
    iget-object v3, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/player/helper/VersionManager$VersionInfo;->product:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .parameter "context"

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 68
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "com.miui.player.helper.VersionManager"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getVersionNum(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_version_preference"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, oldVersion:I
    return v0
.end method

.method private static saveVersionNum(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "currentVersion"

    .prologue
    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_version_preference"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method


# virtual methods
.method public isFirstInstalled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v0, v0, Lcom/miui/player/helper/VersionManager$VersionInfo;->oldVersion:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdated()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v0, v0, Lcom/miui/player/helper/VersionManager$VersionInfo;->oldVersion:I

    iget-object v1, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v1, v1, Lcom/miui/player/helper/VersionManager$VersionInfo;->newVersion:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVersionNum(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v0, v0, Lcom/miui/player/helper/VersionManager$VersionInfo;->newVersion:I

    iget-object v1, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v1, v1, Lcom/miui/player/helper/VersionManager$VersionInfo;->oldVersion:I

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/player/helper/VersionManager;->mVersionInfo:Lcom/miui/player/helper/VersionManager$VersionInfo;

    iget v0, v0, Lcom/miui/player/helper/VersionManager$VersionInfo;->newVersion:I

    invoke-static {p1, v0}, Lcom/miui/player/helper/VersionManager;->saveVersionNum(Landroid/content/Context;I)V

    .line 60
    :cond_0
    return-void
.end method
