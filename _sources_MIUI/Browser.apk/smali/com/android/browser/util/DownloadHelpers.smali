.class public Lcom/android/browser/util/DownloadHelpers;
.super Ljava/lang/Object;
.source "DownloadHelpers.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.util.DownloadHelpers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableStorage(Ljava/lang/String;)J
    .locals 10
    .parameter "path"

    .prologue
    .line 58
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 60
    .local v7, statFs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 62
    .local v4, blocSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v0, v8

    .line 63
    .local v0, availaBlock:J
    mul-long v2, v0, v4

    .local v2, availableSpare:J
    move-wide v8, v2

    .line 67
    .end local v0           #availaBlock:J
    .end local v2           #availableSpare:J
    .end local v4           #blocSize:J
    .end local v7           #statFs:Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 65
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 66
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "com.android.browser.util.DownloadHelpers"

    const-string v9, "Error while creating the statFS"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const-wide/16 v8, -0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 39
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 42
    const-string v3, "com.android.browser.util.DownloadHelpers"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 45
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 47
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 48
    const/4 v3, 0x1

    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 18
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 20
    const-string v3, "com.android.browser.util.DownloadHelpers"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 23
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 24
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 25
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    move v3, v5

    .line 27
    goto :goto_0

    .line 24
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
