.class public Lcom/miui/backup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field private static initialized:Z

.field private static instance:Lcom/miui/backup/AppInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/backup/AppInitializer;->initialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/miui/backup/AppInitializer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/miui/backup/AppInitializer;

    invoke-direct {v0}, Lcom/miui/backup/AppInitializer;-><init>()V

    sput-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    .line 25
    :cond_0
    sget-object v0, Lcom/miui/backup/AppInitializer;->instance:Lcom/miui/backup/AppInitializer;

    return-object v0
.end method

.method private migrate(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .parameter "srcDir"
    .parameter "targetDir"

    .prologue
    const/4 v9, 0x1

    const-string v10, "AppInitializer"

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 88
    .local v4, oldContents:[Ljava/io/File;
    const/4 v5, 0x0

    .line 89
    .local v5, oldSize:I
    if-eqz v4, :cond_0

    .line 90
    array-length v5, v4

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 93
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 94
    const-string v7, "AppInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "srcdirs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 96
    .local v0, cmd:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 97
    aget-object v2, v1, v3

    .line 98
    .local v2, file:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mv -f "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v2           #file:Ljava/io/File;
    :cond_1
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 104
    .local v6, tarContents:[Ljava/io/File;
    if-eqz v6, :cond_2

    array-length v7, v6

    array-length v8, v1

    add-int/2addr v8, v5

    if-lt v7, v8, :cond_2

    .line 105
    const-string v7, "AppInitializer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tardirs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 111
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #tarContents:[Ljava/io/File;
    :goto_1
    return v7

    .line 108
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v6       #tarContents:[Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .end local v0           #cmd:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #tarContents:[Ljava/io/File;
    :cond_3
    move v7, v9

    .line 111
    goto :goto_1
.end method


# virtual methods
.method public init()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "AppInitializer"

    .line 34
    sget-boolean v3, Lcom/miui/backup/AppInitializer;->initialized:Z

    if-eqz v3, :cond_0

    .line 35
    sget-boolean v3, Lcom/miui/backup/AppInitializer;->initialized:Z

    .line 83
    :goto_0
    return v3

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    const-string v3, "AppInitializer"

    const-string v3, "SDCard is unmounted!"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    sget-object v3, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    sget-object v3, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 44
    :cond_2
    sget-object v3, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 45
    sget-object v3, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 47
    :cond_3
    sget-object v3, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 48
    sget-object v3, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_4
    :try_start_0
    sget-object v3, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 53
    sget-object v3, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_5
    :goto_1
    sget-object v3, Lcom/miui/backup/Customization;->APP_MIGRATE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 60
    const/4 v2, 0x1

    .line 61
    .local v2, migSysData:Z
    const/4 v1, 0x1

    .line 63
    .local v1, migAppData:Z
    sget-object v3, Lcom/miui/backup/Customization;->OLD_BACKUP_SYS_DATA_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    sget-object v3, Lcom/miui/backup/Customization;->OLD_BACKUP_SYS_DATA_DIR:Ljava/io/File;

    sget-object v4, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {p0, v3, v4}, Lcom/miui/backup/AppInitializer;->migrate(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 66
    :cond_6
    sget-object v3, Lcom/miui/backup/Customization;->OLD_BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    sget-object v3, Lcom/miui/backup/Customization;->OLD_BACKUP_BASE_DIR:Ljava/io/File;

    sget-object v4, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-direct {p0, v3, v4}, Lcom/miui/backup/AppInitializer;->migrate(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 70
    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 72
    :try_start_1
    sget-object v3, Lcom/miui/backup/Customization;->APP_MIGRATE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .end local v1           #migAppData:Z
    .end local v2           #migSysData:Z
    :cond_8
    :goto_2
    sput-boolean v7, Lcom/miui/backup/AppInitializer;->initialized:Z

    move v3, v7

    .line 83
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 56
    .local v0, e:Ljava/io/IOException;
    const-string v3, "AppInitializer"

    const-string v3, "Error create .nomedia: "

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #migAppData:Z
    .restart local v2       #migSysData:Z
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 74
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "AppInitializer"

    const-string v3, "Error create .migrate: "

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :cond_9
    sput-boolean v5, Lcom/miui/backup/AppInitializer;->initialized:Z

    move v3, v5

    .line 78
    goto/16 :goto_0
.end method
