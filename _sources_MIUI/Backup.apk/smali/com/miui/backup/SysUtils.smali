.class public Lcom/miui/backup/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final mExec:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/backup/Customization;->EXEC_FILE:Ljava/io/File;

    sput-object v0, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countFileSize(Ljava/io/File;)J
    .locals 11
    .parameter "root"

    .prologue
    .line 112
    const-wide/16 v5, 0x0

    .line 114
    .local v5, size:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 117
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 118
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    :cond_0
    move-wide v7, v5

    .line 126
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #size:J
    .local v7, size:J
    :goto_1
    return-wide v7

    .line 123
    .end local v7           #size:J
    .restart local v5       #size:J
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide v7, v5

    .line 126
    .end local v5           #size:J
    .restart local v7       #size:J
    goto :goto_1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 6
    .parameter "dirname"

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 94
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 95
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 96
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-static {v2}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 101
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 0
    .parameter "dirname"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 109
    return-void
.end method

.method public static enoughSpaceOnData(J)Z
    .locals 9
    .parameter "sizeInNeed"

    .prologue
    const/4 v8, 0x0

    .line 145
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 146
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v8

    .line 152
    :goto_0
    return v6

    .line 149
    :cond_0
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 150
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 151
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 152
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    cmp-long v6, p0, v6

    if-gez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_0
.end method

.method public static enoughSpaceOnSdCard(J)Z
    .locals 10
    .parameter "sizeInNeed"

    .prologue
    const/4 v9, 0x0

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, status:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 141
    :goto_0
    return v7

    .line 134
    :cond_0
    sget-object v4, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    .line 135
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 136
    goto :goto_0

    .line 138
    :cond_1
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 139
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 140
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 141
    .local v0, availableBlocks:J
    mul-long v7, v0, v2

    cmp-long v7, p0, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_0
.end method

.method public static runCommandSh()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "SysUtils"

    .line 77
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 78
    .local v1, pm:Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 80
    .local v2, status:I
    :try_start_0
    sget-object v3, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackupScript(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 84
    :goto_0
    if-eqz v2, :cond_0

    .line 85
    const-string v3, "SysUtils"

    const-string v3, "run backup script failed, status %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 88
    :goto_1
    return v3

    .line 81
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SysUtils"

    const-string v3, "can\'t run backup script, %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v3, v6

    .line 88
    goto :goto_1
.end method

.method public static varargs runExecSh([Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/miui/backup/SysUtils;->writeExecSh([Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/miui/backup/SysUtils;->runCommandSh()Z

    .line 36
    return-void
.end method

.method public static showBubble(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .parameter "context"
    .parameter "packageName"
    .parameter "show"

    .prologue
    const/4 v10, 0x0

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    :cond_0
    return-void

    .line 159
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 164
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    .line 167
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 168
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 169
    .local v0, activity:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 170
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.update_application_flatten_name"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    if-eqz p2, :cond_3

    const-string v7, " "

    move-object v4, v7

    .line 175
    .local v4, message:Ljava/lang/String;
    :goto_1
    const-string v7, "android.intent.extra.update_application_message"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v7, "android.intent.extra.update_application_message_background_package"

    const-string v8, "com.miui.backup"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v7, "android.intent.extra.update_application_message_background"

    const v8, 0x7f02000b

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v4           #message:Ljava/lang/String;
    :cond_3
    move-object v4, v10

    .line 174
    goto :goto_1
.end method

.method public static varargs writeExecSh([Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"

    .prologue
    .line 39
    sget-object v3, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    sget-object v3, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 43
    :cond_0
    :try_start_0
    sget-object v3, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 44
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/miui/backup/SysUtils;->mExec:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 45
    .local v2, out:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 46
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    .line 47
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 48
    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #i:I
    .end local v2           #out:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 52
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 53
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SysUtils"

    const-string v4, "Error create exec.sh: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
