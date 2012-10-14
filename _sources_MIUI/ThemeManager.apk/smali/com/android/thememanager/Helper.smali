.class public Lcom/android/thememanager/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const-string v2, "\""

    .line 159
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static convertFileToZipFormat(Ljava/lang/String;)Z
    .locals 9
    .parameter "srcFilePath"

    .prologue
    const/4 v8, 0x0

    .line 32
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, srcFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, zipTmp:Ljava/io/File;
    const/4 v2, 0x0

    .line 36
    .local v2, result:Z
    const/4 v0, 0x2

    .local v0, maxZipCnt:I
    move v1, v0

    .line 37
    .end local v0           #maxZipCnt:I
    .local v1, maxZipCnt:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #maxZipCnt:I
    .restart local v0       #maxZipCnt:I
    if-lez v1, :cond_0

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/thememanager/Helper;->zip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move v1, v0

    .end local v0           #maxZipCnt:I
    .restart local v1       #maxZipCnt:I
    goto :goto_0

    .line 41
    .end local v1           #maxZipCnt:I
    .restart local v0       #maxZipCnt:I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rm -rf "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/thememanager/Helper;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 42
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    move v5, v8

    goto :goto_1
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "srcZipFilePath"
    .parameter "extractDirPath"

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/thememanager/Helper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 116
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0           #filter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V
    .locals 9
    .parameter "zipFile"
    .parameter "targetBase"
    .parameter
    .parameter "copyThirdAppRes"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/app/ProgressDialog;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const-string v4, "%s/%s"

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 126
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x0

    .line 127
    .local v1, entry:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 128
    .local v3, path:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 129
    if-eqz p4, :cond_1

    .line 130
    invoke-virtual {p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p4, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 132
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 133
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, index:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v2, v4, v8

    :goto_1
    if-ltz v2, :cond_2

    .line 138
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 143
    :cond_2
    if-eqz p3, :cond_0

    if-gez v2, :cond_0

    .line 144
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v4, v4

    sub-int v2, v4, v8

    :goto_2
    if-ltz v2, :cond_3

    .line 145
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    :cond_3
    if-gez v2, :cond_0

    const-string v4, "preview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "description.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "%s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 154
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #index:I
    .end local v3           #path:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 156
    :cond_4
    return-void

    .line 137
    .restart local v0       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #index:I
    .restart local v3       #path:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 144
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "srcFilePath"
    .parameter "outZipFilePath"

    .prologue
    const/4 v9, -0x1

    .line 49
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, target:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 51
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x1ff

    invoke-static {v7, v8, v9, v9}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 53
    const/4 v4, 0x0

    .line 55
    .local v4, result:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v2, f:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v7, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v3, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v3, out:Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 58
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v5, srcFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 60
    .local v0, base:Ljava/lang/String;
    :goto_0
    invoke-static {v3, v5, v0}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    .line 61
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 66
    .end local v0           #base:Ljava/lang/String;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #srcFile:Ljava/io/File;
    :goto_1
    return v4

    .line 59
    .restart local v2       #f:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/util/zip/ZipOutputStream;
    .restart local v5       #srcFile:Ljava/io/File;
    :cond_0
    const-string v7, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    .line 62
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #srcFile:Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 63
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .parameter "out"
    .parameter "src"
    .parameter "base"

    .prologue
    .line 70
    const/4 v4, 0x1

    .line 71
    .local v4, result:Z
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 74
    .local p1, files:[Ljava/io/File;
    if-eqz p1, :cond_6

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    invoke-static {p2}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v4

    .end local v4           #result:Z
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 79
    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 78
    .local v1, result:Z
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 84
    .end local v0           #i:I
    .restart local v4       #result:Z
    .local p1, src:Ljava/io/File;
    :cond_2
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 85
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 87
    .local v2, count:I
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 88
    .local v3, crc32:Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v5, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 89
    .local v1, ch:Ljava/util/zip/CheckedInputStream;
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 90
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 92
    new-instance v1, Ljava/util/zip/ZipEntry;

    .end local v1           #ch:Ljava/util/zip/CheckedInputStream;
    invoke-direct {v1, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, entry:Ljava/util/zip/ZipEntry;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 95
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    new-instance v1, Ljava/io/BufferedInputStream;

    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #crc32:Ljava/util/zip/CRC32;
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    invoke-direct {v1, v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p1           #src:Ljava/io/File;
    .local v1, in:Ljava/io/BufferedInputStream;
    move p1, v2

    .line 99
    .end local v2           #count:I
    .local p1, count:I
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    .line 100
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 103
    .end local v0           #buffer:[B
    .end local v1           #in:Ljava/io/BufferedInputStream;
    .end local p1           #count:I
    :catch_0
    move-exception p0

    .line 104
    .local p0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    .line 107
    .end local v4           #result:Z
    .end local p0           #e:Ljava/lang/Exception;
    :goto_3
    return p0

    .line 102
    .restart local v0       #buffer:[B
    .restart local v1       #in:Ljava/io/BufferedInputStream;
    .restart local v4       #result:Z
    .local p0, out:Ljava/util/zip/ZipOutputStream;
    .restart local p1       #count:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v4

    .line 105
    .local p0, result:I
    goto :goto_3

    .end local v1           #in:Ljava/io/BufferedInputStream;
    .end local v4           #result:Z
    .local v0, i:I
    .local p0, out:Ljava/util/zip/ZipOutputStream;
    .local p1, files:[Ljava/io/File;
    :cond_5
    move p0, v1

    .local p0, result:I
    goto :goto_3

    .end local v0           #i:I
    .restart local v4       #result:Z
    .local p0, out:Ljava/util/zip/ZipOutputStream;
    :cond_6
    move p0, v4

    .local p0, result:I
    goto :goto_3
.end method
