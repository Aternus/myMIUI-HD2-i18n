.class public Lcom/android/browser/common/Misc;
.super Ljava/lang/Object;
.source "Misc.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/Misc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMyVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "releaseChannel"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    const-string v1, "&ch=%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, version:Ljava/lang/String;
    const-string v1, "an-%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "common/Misc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .parameter "context"

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
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

    .line 35
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 32
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "common/Misc"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSDKVersionNumber()I
    .locals 3

    .prologue
    .line 20
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 24
    .local v1, sdkVersion:I
    :goto_0
    return v1

    .line 21
    .end local v1           #sdkVersion:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 22
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1       #sdkVersion:I
    goto :goto_0
.end method

.method public static readTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "inputStream"

    .prologue
    .line 51
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v3, outputStream:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 55
    .local v0, buf:[B
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 56
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v2           #len:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 61
    .local v1, e:Ljava/io/IOException;
    const-string v4, "common/Misc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error@readTextFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v4, ""

    .line 64
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 58
    .restart local v2       #len:I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 59
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
