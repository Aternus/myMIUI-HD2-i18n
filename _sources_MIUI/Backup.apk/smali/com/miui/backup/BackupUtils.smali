.class public Lcom/miui/backup/BackupUtils;
.super Ljava/lang/Object;
.source "BackupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommaFormat(J)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, numberStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 89
    .local v4, strLen:I
    rem-int/lit8 v0, v4, 0x3

    .line 90
    .local v0, firstSegLen:I
    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x3

    .line 94
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, format:Ljava/lang/String;
    move v2, v0

    .line 97
    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 101
    :cond_1
    return-object v1
.end method

.method public static getDirNameFromDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "date"

    .prologue
    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f06008d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v3, 0x0

    .line 61
    :goto_0
    return-object v3

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v4

    .line 48
    .local v2, tail:I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    sub-int/2addr v2, v4

    .line 53
    :cond_1
    const/16 v3, 0x2f

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 54
    .local v1, head:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 60
    :goto_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 61
    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getKMFormat(J)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 66
    const-string v0, "K"

    .line 67
    .local v0, K:Ljava/lang/String;
    const-string v0, "M"

    .line 68
    .local v0, M:Ljava/lang/String;
    const-wide/high16 v0, 0x4090

    .line 69
    .local v0, perK:D
    const-wide/high16 v0, 0x4130

    .line 71
    .local v0, perM:D
    const-string v0, ""

    .line 72
    .local v0, format:Ljava/lang/String;
    long-to-double p0, p0

    .line 73
    .local p0, dNumber:D
    const-wide/high16 v1, 0x4130

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #format:Ljava/lang/String;
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4130

    div-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .end local p0           #dNumber:D
    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "M"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    .local p0, format:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 75
    .restart local v0       #format:Ljava/lang/String;
    .local p0, dNumber:D
    :cond_0
    const-wide/high16 v1, 0x4090

    cmpl-double v1, p0, v1

    if-ltz v1, :cond_1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #format:Ljava/lang/String;
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4090

    div-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .end local p0           #dNumber:D
    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "K"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, format:Ljava/lang/String;
    goto :goto_0

    .line 78
    .restart local v0       #format:Ljava/lang/String;
    .local p0, dNumber:D
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #format:Ljava/lang/String;
    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local p0           #dNumber:D
    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, format:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getProgress(Ljava/io/File;)I
    .locals 8
    .parameter "dir"

    .prologue
    .line 152
    new-instance v6, Lcom/miui/backup/BackupUtils$2;

    invoke-direct {v6}, Lcom/miui/backup/BackupUtils$2;-><init>()V

    invoke-virtual {p0, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 159
    .local v5, progressFiles:[Ljava/io/File;
    const/4 v4, 0x0

    .line 160
    .local v4, progress:I
    array-length v6, v5

    if-lez v6, :cond_2

    .line 161
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 162
    .local v1, file:Ljava/io/File;
    const-string v6, "backup_progress_canceled"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 163
    const/4 v4, 0x2

    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const-string v6, "backup_progress_running"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    .line 166
    const/4 v4, 0x1

    goto :goto_1

    .line 171
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return v4
.end method

.method public static getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "date"

    .prologue
    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f06008c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/miui/backup/BackupUtils;->getDirNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static persistProgress(Ljava/io/File;I)V
    .locals 8
    .parameter "dir"
    .parameter "progress"

    .prologue
    .line 123
    new-instance v6, Lcom/miui/backup/BackupUtils$1;

    invoke-direct {v6}, Lcom/miui/backup/BackupUtils$1;-><init>()V

    invoke-virtual {p0, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 130
    .local v5, progressFiles:[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 131
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 132
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_1
    return-void

    .line 138
    :pswitch_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "backup_progress_canceled"

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 147
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v1           #e:Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "backup_progress_running"

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
