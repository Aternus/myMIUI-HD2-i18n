.class public Lcom/miui/milk/util/SysHelpers;
.super Ljava/lang/Object;
.source "SysHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "statusCode"

    .prologue
    .line 68
    const-string v1, "2101"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 69
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, networkErrorString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 70
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_0
    const-string v1, "2102"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 71
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_1
    const/16 v1, 0x1f7

    if-ne p1, v1, :cond_2

    .line 73
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_2
    const/16 v1, 0x191

    if-ne p1, v1, :cond_3

    .line 75
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_3
    const/16 v1, 0x198

    if-ne p1, v1, :cond_4

    .line 77
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_4
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_5

    .line 79
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_5
    const/16 v1, 0x190

    if-ne p1, v1, :cond_6

    .line 81
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_6
    const/16 v1, 0x19c

    if-ne p1, v1, :cond_7

    .line 83
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v0           #networkErrorString:Ljava/lang/String;
    :cond_7
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #networkErrorString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const-string v5, "SysHelpers"

    .line 20
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 22
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 23
    const-string v3, "SysHelpers"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const-string v3, "SysHelpers"

    const-string v3, "network is not available"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 26
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 28
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 29
    const-string v3, "SysHelpers"

    const-string v3, "network is available"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v3, 0x1

    goto :goto_0

    .line 27
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const-string v5, "SysHelpers"

    .line 43
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 45
    const-string v3, "SysHelpers"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const-string v3, "SysHelpers"

    const-string v3, "wifi is not available"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 48
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 50
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 53
    const-string v3, "SysHelpers"

    const-string v3, "wifi is available"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 54
    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
