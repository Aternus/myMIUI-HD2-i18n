.class public Lcom/android/browser/util/VersionableYellowPageInfo;
.super Lcom/android/browser/util/BasicVersionableData;
.source "VersionableYellowPageInfo.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = null

.field private static final PREF_DATA_VERSION_KEY_CN:Ljava/lang/String; = "yellowpage_cn"

.field private static final PREF_DATA_VERSION_KEY_EN:Ljava/lang/String; = "yellowpage_en"

.field private static final YELLOW_PAGE_RES_VERSION_CN:I = 0x0

.field private static final YELLOW_PAGE_RES_VERSION_EN:I = 0x0

.field private static mInstance:Lcom/android/browser/util/VersionableYellowPageInfo; = null

.field public static final sYellowPageServerUrl:Ljava/lang/String; = "http://daohang.inter.miui.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/browser/util/VersionableYellowPageInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/util/VersionableYellowPageInfo;->LOG_TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/android/browser/util/VersionableYellowPageInfo;

    invoke-direct {v0}, Lcom/android/browser/util/VersionableYellowPageInfo;-><init>()V

    sput-object v0, Lcom/android/browser/util/VersionableYellowPageInfo;->mInstance:Lcom/android/browser/util/VersionableYellowPageInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/browser/util/BasicVersionableData;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/browser/util/VersionableYellowPageInfo;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/browser/util/VersionableYellowPageInfo;->mInstance:Lcom/android/browser/util/VersionableYellowPageInfo;

    return-object v0
.end method

.method private getResBuiltinVersion()I
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 125
    .local v0, resDataVer:I
    :goto_0
    return v0

    .line 123
    .end local v0           #resDataVer:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resDataVer:I
    goto :goto_0
.end method

.method private getVersionableFileName(I)Ljava/lang/String;
    .locals 4
    .parameter "ver"

    .prologue
    .line 129
    const-string v0, "%s_v%d.json"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionDataKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canDeleteFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/browser/util/VersionableYellowPageInfo;->getLocalVersion(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionableFileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doUpgradeNow(Landroid/content/Context;II)Z
    .locals 11
    .parameter "context"
    .parameter "oldVersion"
    .parameter "newVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v6, Lcom/android/browser/util/VersionableYellowPageInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "trying to upgrade yellow page data from %d to %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-ge p2, p3, :cond_0

    .line 64
    invoke-direct {p0, p3}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionableFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, fileName:Ljava/lang/String;
    const-string v6, "%s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "http://daohang.inter.miui.com/dat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, fileUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionableFileFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v5, output:Ljava/io/FileOutputStream;
    invoke-static {p1, v4, v5}, Lcom/android/browser/common/Network;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    const/4 v6, 0x1

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v6, v7}, Lcom/android/browser/model/YellowPageDataProvider;->initialize(Landroid/content/Context;ZLjava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 80
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #fileUrl:Ljava/lang/String;
    .end local v5           #output:Ljava/io/FileOutputStream;
    :goto_0
    return v6

    .line 74
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #fileUrl:Ljava/lang/String;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 75
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/browser/util/VersionableYellowPageInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #fileUrl:Ljava/lang/String;
    .end local v5           #output:Ljava/io/FileOutputStream;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "error"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/browser/util/VersionableYellowPageInfo;->getLocalVersion(Landroid/content/Context;)I

    move-result v4

    .line 96
    .local v4, localVersion:I
    invoke-direct {p0}, Lcom/android/browser/util/VersionableYellowPageInfo;->getResBuiltinVersion()I

    move-result v5

    .line 97
    .local v5, resDataVer:I
    if-le v4, v5, :cond_0

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionableFileFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 101
    .local v1, dir:Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/android/browser/util/VersionableYellowPageInfo;->getVersionableFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, fileName:Ljava/lang/String;
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 103
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 104
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/browser/util/VersionableYellowPageInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "error"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 111
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 112
    const-string v6, "yellowpage_en.json"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    .line 105
    .end local v0           #am:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 106
    .local v2, e:Ljava/lang/SecurityException;
    sget-object v6, Lcom/android/browser/util/VersionableYellowPageInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "error"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v0       #am:Landroid/content/res/AssetManager;
    :cond_1
    const-string v6, "yellowpage_cn.json"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0
.end method

.method public getLocalVersion(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/browser/util/BasicVersionableData;->getLocalVersion(Landroid/content/Context;)I

    move-result v1

    .line 53
    .local v1, ver:I
    invoke-direct {p0}, Lcom/android/browser/util/VersionableYellowPageInfo;->getResBuiltinVersion()I

    move-result v0

    .line 54
    .local v0, resDataVer:I
    if-gt v1, v0, :cond_0

    move v2, v0

    .line 57
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public getVersionDataKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "yellowpage_en"

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "yellowpage_cn"

    goto :goto_0
.end method
