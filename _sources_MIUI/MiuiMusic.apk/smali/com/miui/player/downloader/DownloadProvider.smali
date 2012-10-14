.class public final Lcom/miui/player/downloader/DownloadProvider;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/downloader/DownloadProvider$WebAddress;
    }
.end annotation


# static fields
.field private static final DELETE_FILE_WAIT_INTERVAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DownloadProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static checkDirectoryExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "dirName"

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "subDirectory"
    .parameter "appointName"

    .prologue
    .line 241
    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "remoteId"

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 41
    if-nez p0, :cond_1

    move-object v0, v11

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v11

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    const-string v7, "(status >= \'100\') AND (status <= \'199\')"

    .line 51
    .local v7, WHERE_RUNNING_ALL:Ljava/lang/String;
    const-string v6, "(status >= \'100\') AND (status <= \'199\') AND entity= ?"

    .line 52
    .local v6, SELECTION:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 56
    .local v4, SELECT_ARG:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(status >= \'100\') AND (status <= \'199\') AND entity= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 60
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 62
    .local v9, id:J
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    if-eqz v8, :cond_0

    .line 66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 65
    .end local v9           #id:J
    :cond_3
    if-eqz v8, :cond_4

    .line 66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v11

    .line 70
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    const/4 v1, 0x1

    .line 75
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    invoke-virtual {p3, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    .locals 15
    .parameter "ctx"
    .parameter "url"
    .parameter "remoteId"
    .parameter "details"
    .parameter "subDirectory"
    .parameter "appointName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 93
    .local p6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/16 v12, 0xc0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v11

    move v8, v12

    move-wide v9, v13

    invoke-static/range {v0 .. v10}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJ)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJ)Landroid/net/Uri;
    .locals 13
    .parameter "ctx"
    .parameter "url"
    .parameter "remoteId"
    .parameter "details"
    .parameter "subDirectory"
    .parameter "appointName"
    .parameter
    .parameter "visibility"
    .parameter "status"
    .parameter "timeOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 100
    .local p6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move v11, v12

    invoke-static/range {v0 .. v11}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJZ)Landroid/net/Uri;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJZ)Landroid/net/Uri;
    .locals 13
    .parameter "ctx"
    .parameter "url"
    .parameter "remoteId"
    .parameter "details"
    .parameter "subDirectory"
    .parameter "appointName"
    .parameter
    .parameter "visibility"
    .parameter "status"
    .parameter "timeOut"
    .parameter "isInternal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 107
    .local p6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 108
    const/4 p0, 0x0

    .line 236
    .end local p0
    .end local p1
    .end local p3
    .end local p4
    .end local p5
    .end local p9
    :goto_0
    return-object p0

    .line 109
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p9
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 110
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 113
    :cond_2
    if-nez p11, :cond_4

    .line 114
    invoke-static/range {p4 .. p4}, Lcom/miui/player/downloader/DownloadProvider;->checkDirectoryExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 115
    const/4 p0, 0x0

    goto :goto_0

    .line 117
    :cond_3
    invoke-static/range {p4 .. p5}, Lcom/miui/player/downloader/DownloadProvider;->getFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 126
    .local p4, filePath:Ljava/lang/String;
    :goto_1
    new-instance v12, Ljava/io/File;

    move-object v0, v12

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v12, file:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result p4

    .end local p4           #filePath:Ljava/lang/String;
    if-eqz p4, :cond_b

    .line 128
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 129
    const/4 p0, 0x0

    goto :goto_0

    .line 119
    .end local v12           #file:Ljava/io/File;
    .local p4, subDirectory:Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .end local v4           #dir:Ljava/io/File;
    if-nez v4, :cond_5

    .line 121
    const/4 p0, 0x0

    goto :goto_0

    .line 123
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #subDirectory:Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .local p4, filePath:Ljava/lang/String;
    goto :goto_1

    .line 130
    .end local p4           #filePath:Ljava/lang/String;
    .restart local v12       #file:Ljava/io/File;
    :cond_6
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result p4

    if-nez p4, :cond_b

    .line 131
    const/16 p4, 0x0

    .line 132
    .local p4, deleteSuccess:Z
    const-wide/16 v4, 0x0

    cmp-long v4, p9, v4

    if-lez v4, :cond_8

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, current:J
    add-long v6, v4, p9

    .local v6, end:J
    move-wide/from16 p9, v4

    .line 136
    .end local v4           #current:J
    .local p9, current:J
    :cond_7
    sub-long p9, v6, p9

    .line 141
    .local p9, remainTime:J
    const-wide/16 v4, 0x64

    cmp-long v4, p9, v4

    if-gez v4, :cond_9

    .end local p9           #remainTime:J
    :goto_2
    :try_start_0
    invoke-static/range {p9 .. p10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result p9

    if-eqz p9, :cond_a

    .line 145
    const/16 p4, 0x1

    .line 152
    .end local v6           #end:J
    :cond_8
    :goto_4
    if-nez p4, :cond_b

    .line 153
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v6       #end:J
    .restart local p9       #remainTime:J
    :cond_9
    const-wide/16 p9, 0x64

    goto :goto_2

    .line 148
    .end local p9           #remainTime:J
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p9

    .line 149
    .local p9, current:J
    cmp-long v4, p9, v6

    if-ltz v4, :cond_7

    goto :goto_4

    .line 160
    .end local v6           #end:J
    .end local p4           #deleteSuccess:Z
    .end local p9           #current:J
    :cond_b
    const/16 p9, 0x0

    .line 163
    .local p9, uri:Ljava/net/URI;
    :try_start_1
    new-instance p4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .end local p1
    invoke-static {p1}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object p1

    move-object/from16 v0, p4

    move-object v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 165
    .local p4, newUrl:Ljava/lang/String;
    new-instance p10, Lcom/miui/player/downloader/DownloadProvider$WebAddress;

    move-object/from16 v0, p10

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/miui/player/downloader/DownloadProvider$WebAddress;-><init>(Ljava/lang/String;)V

    .line 166
    .local p10, w:Lcom/miui/player/downloader/DownloadProvider$WebAddress;
    const/4 v11, 0x0

    .line 167
    .local v11, frag:Ljava/lang/String;
    const/4 v10, 0x0

    .line 168
    .local v10, query:Ljava/lang/String;
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/miui/player/downloader/DownloadProvider$WebAddress;->mPath:Ljava/lang/String;

    move-object v9, v0

    .line 170
    .local v9, path:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    .line 172
    const/16 p1, 0x23

    invoke-virtual {v9, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 173
    .local p1, idx:I
    const/16 p4, -0x1

    move v0, p1

    move/from16 v1, p4

    if-eq v0, v1, :cond_c

    .line 174
    .end local p4           #newUrl:Ljava/lang/String;
    add-int/lit8 p4, p1, 0x1

    move-object v0, v9

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 175
    const/16 p4, 0x0

    move-object v0, v9

    move/from16 v1, p4

    move v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_c
    const/16 p1, 0x3f

    invoke-virtual {v9, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .end local p1           #idx:I
    move-result p1

    .line 178
    .restart local p1       #idx:I
    const/16 p4, -0x1

    move v0, p1

    move/from16 v1, p4

    if-eq v0, v1, :cond_d

    .line 179
    add-int/lit8 p4, p1, 0x1

    move-object v0, v9

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    const/16 p4, 0x0

    move-object v0, v9

    move/from16 v1, p4

    move v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 183
    .end local p1           #idx:I
    :cond_d
    new-instance v4, Ljava/net/URI;

    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/miui/player/downloader/DownloadProvider$WebAddress;->mScheme:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/miui/player/downloader/DownloadProvider$WebAddress;->mAuthInfo:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/miui/player/downloader/DownloadProvider$WebAddress;->mHost:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/miui/player/downloader/DownloadProvider$WebAddress;->mPort:I

    move v8, v0

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local p9           #uri:Ljava/net/URI;
    .local v4, uri:Ljava/net/URI;
    move-object/from16 p4, v9

    .line 186
    .local p4, filename:Ljava/lang/String;
    :try_start_2
    const-string p1, ""

    .line 187
    .local p1, fileext:Ljava/lang/String;
    const/16 p9, 0x2f

    move-object v0, v9

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p9

    .line 188
    .local p9, filename_idx:I
    const/16 p10, -0x1

    move/from16 v0, p10

    move/from16 v1, p9

    if-eq v0, v1, :cond_e

    .line 189
    .end local p10           #w:Lcom/miui/player/downloader/DownloadProvider$WebAddress;
    add-int/lit8 p4, p9, 0x1

    move-object v0, v9

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local p4           #filename:Ljava/lang/String;
    move-result-object p4

    .line 191
    .restart local p4       #filename:Ljava/lang/String;
    :cond_e
    const/16 p9, 0x2e

    move-object/from16 v0, p4

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .end local p9           #filename_idx:I
    move-result p9

    .line 192
    .restart local p9       #filename_idx:I
    const/16 p10, -0x1

    move/from16 v0, p10

    move/from16 v1, p9

    if-eq v0, v1, :cond_f

    .line 193
    add-int/lit8 p1, p9, 0x1

    move-object/from16 v0, p4

    move v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local p1           #fileext:Ljava/lang/String;
    move-result-object p1

    .line 195
    .restart local p1       #fileext:Ljava/lang/String;
    :cond_f
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p4

    .end local p4           #filename:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p4

    .line 200
    .local p4, mimetype:Ljava/lang/String;
    new-instance p9, Landroid/content/ContentValues;

    .end local p9           #filename_idx:I
    invoke-direct/range {p9 .. p9}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local p9, values:Landroid/content/ContentValues;
    const-string p1, "Mozilla/5.0 (Linux; U; Android 1.5; en-us; sdk Build/CUPCAKE) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    .line 203
    .local p1, AGENT:Ljava/lang/String;
    const-string p1, "uri"

    .end local p1           #AGENT:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p10

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string p1, "useragent"

    const-string p10, "Mozilla/5.0 (Linux; U; Android 1.5; en-us; sdk Build/CUPCAKE) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string p1, "notificationpackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p10

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string p1, "notificationclass"

    const-class p10, Lcom/miui/player/downloader/OpenDownloadReceiver;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p10

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string p1, "visibility"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string p1, "mimetype"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string p1, "entity"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string p1, "title"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string p1, "description"

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p4

    .end local p4           #mimetype:Ljava/lang/String;
    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string p1, "notificationextras"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string p1, "status"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    if-nez p11, :cond_10

    .line 215
    const-string p1, "destination"

    const/16 p3, 0x4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string p1, "hint"

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_5
    const/4 p1, 0x2

    move/from16 v0, p7

    move v1, p1

    if-eq v0, v1, :cond_11

    .line 225
    move-object v0, p2

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadInfoManager;->registerDownload(Ljava/lang/String;Ljava/util/List;)V

    .line 226
    const-string p1, "is_visible_in_downloads_ui"

    const/16 p3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 233
    .local p0, mResolver:Landroid/content/ContentResolver;
    sget-object p1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string p3, "entity=?"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/16 p5, 0x0

    aput-object p2, p4, p5

    .end local p5
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    sget-object p1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto/16 :goto_0

    .line 196
    .end local v4           #uri:Ljava/net/URI;
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #query:Ljava/lang/String;
    .end local v11           #frag:Ljava/lang/String;
    .local p0, ctx:Landroid/content/Context;
    .restart local p3
    .restart local p5
    .local p9, uri:Ljava/net/URI;
    :catch_0
    move-exception p0

    move-object/from16 v4, p9

    .line 197
    .end local p9           #uri:Ljava/net/URI;
    .restart local v4       #uri:Ljava/net/URI;
    .local p0, e:Ljava/lang/Exception;
    :goto_7
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 218
    .end local p3
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #query:Ljava/lang/String;
    .restart local v11       #frag:Ljava/lang/String;
    .local p0, ctx:Landroid/content/Context;
    .local p9, values:Landroid/content/ContentValues;
    :cond_10
    const-string p1, "destination"

    const/16 p3, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string p1, "hint"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string p1, "appointname"

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string p1, "otheruid"

    const/16 p3, 0x3e8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 228
    :cond_11
    const-string p1, "is_visible_in_downloads_ui"

    const/16 p3, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    move-object/from16 v0, p9

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6

    .line 142
    .end local v4           #uri:Ljava/net/URI;
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #query:Ljava/lang/String;
    .end local v11           #frag:Ljava/lang/String;
    .end local p9           #values:Landroid/content/ContentValues;
    .restart local v6       #end:J
    .local p1, url:Ljava/lang/String;
    .restart local p3
    .local p4, deleteSuccess:Z
    :catch_1
    move-exception p9

    goto/16 :goto_3

    .line 196
    .end local v6           #end:J
    .end local p1           #url:Ljava/lang/String;
    .end local p4           #deleteSuccess:Z
    .restart local v4       #uri:Ljava/net/URI;
    .restart local v9       #path:Ljava/lang/String;
    .restart local v10       #query:Ljava/lang/String;
    .restart local v11       #frag:Ljava/lang/String;
    :catch_2
    move-exception p0

    goto :goto_7
.end method

.method public static unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    .local v0, res:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    return-void
.end method
