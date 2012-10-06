.class public Lcom/android/browser/common/BasicDataVersionChecker;
.super Ljava/lang/Object;
.source "BasicDataVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/BasicDataVersionChecker"


# instance fields
.field private mVersionableData:[Lcom/android/browser/util/BasicVersionableData;


# direct methods
.method public constructor <init>([Lcom/android/browser/util/BasicVersionableData;)V
    .locals 0
    .parameter "versionableData"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/common/BasicDataVersionChecker;)[Lcom/android/browser/util/BasicVersionableData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;

    return-object v0
.end method


# virtual methods
.method public doUpgrade(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "versionXml"

    .prologue
    .line 30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 37
    new-instance v15, Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;

    invoke-direct {v15}, Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;-><init>()V

    .line 38
    .local v15, remoteVersionParser:Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;->parseXML(Ljava/lang/String;)V

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/common/BasicDataVersionChecker;->mVersionableData:[Lcom/android/browser/util/BasicVersionableData;

    move-object v4, v0

    .local v4, arr$:[Lcom/android/browser/util/BasicVersionableData;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v12, :cond_4

    aget-object v5, v4, v10

    .line 41
    .local v5, data:Lcom/android/browser/util/BasicVersionableData;
    invoke-virtual {v5}, Lcom/android/browser/util/BasicVersionableData;->getVersionDataKey()Ljava/lang/String;

    move-result-object v11

    .line 43
    .local v11, key:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/util/BasicVersionableData;->getLocalVersion(Landroid/content/Context;)I

    move-result v13

    .line 44
    .local v13, localVersion:I
    invoke-virtual {v15, v11}, Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;->getRemoteDataVersion(Ljava/lang/String;)I

    move-result v14

    .line 45
    .local v14, remoteVersion:I
    const/high16 v16, -0x8000

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 40
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 48
    :cond_3
    if-eq v14, v13, :cond_2

    .line 49
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/util/BasicVersionableData;->doUpgradeNow(Landroid/content/Context;II)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 50
    const-string v16, "common/BasicDataVersionChecker"

    const-string v17, "data upgrade was successful"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/util/BasicVersionableData;->persistLocalVersion(Landroid/content/Context;I)V

    .line 54
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/util/BasicVersionableData;->doPostUpgradeAction(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 59
    .end local v4           #arr$:[Lcom/android/browser/util/BasicVersionableData;
    .end local v5           #data:Lcom/android/browser/util/BasicVersionableData;
    .end local v10           #i$:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #localVersion:I
    .end local v14           #remoteVersion:I
    .end local v15           #remoteVersionParser:Lcom/android/browser/common/BasicDataVersionChecker$RemoteDataVersionParser;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 60
    .local v7, e:Ljava/lang/SecurityException;
    const-string v16, "common/BasicDataVersionChecker"

    const-string v17, "error in cleaning up cache..."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v7           #e:Ljava/lang/SecurityException;
    :cond_4
    :goto_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/browser/util/BasicVersionableData;->getVersionableFileFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 69
    .local v6, dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 70
    new-instance v16, Lcom/android/browser/common/BasicDataVersionChecker$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/browser/common/BasicDataVersionChecker$1;-><init>(Lcom/android/browser/common/BasicDataVersionChecker;Landroid/content/Context;)V

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 82
    .local v9, fileList:[Ljava/io/File;
    if-eqz v9, :cond_0

    .line 84
    move-object v4, v9

    .local v4, arr$:[Ljava/io/File;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_4
    if-ge v10, v12, :cond_0

    aget-object v8, v4, v10

    .line 85
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 86
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 84
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 61
    .end local v4           #arr$:[Ljava/io/File;
    .end local v6           #dir:Ljava/io/File;
    .end local v8           #file:Ljava/io/File;
    .end local v9           #fileList:[Ljava/io/File;
    .end local v10           #i$:I
    .end local v12           #len$:I
    :catch_1
    move-exception v16

    move-object/from16 v7, v16

    .line 62
    .local v7, e:Ljava/io/IOException;
    const-string v16, "common/BasicDataVersionChecker"

    const-string v17, "error in downloading..."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 89
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v16

    move-object/from16 v7, v16

    .line 90
    .local v7, e:Ljava/lang/SecurityException;
    const-string v16, "common/BasicDataVersionChecker"

    const-string v17, "error in cleaning up cache..."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
