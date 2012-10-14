.class public Lcom/android/thememanager/ThemeInfo;
.super Lcom/miui/android/resourcebrowser/ZipResourceInfo;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;,
        Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;,
        Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
    }
.end annotation


# static fields
.field private static PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;


# instance fields
.field public mFlags:J

.field public mPreviewFlag:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/miui/android/resourcebrowser/ZipResourceCache;)V
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "componentFlags"
    .parameter "themeCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p5}, Lcom/miui/android/resourcebrowser/ZipResourceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;)V

    .line 164
    iget v0, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/thememanager/ThemeInfo;->parseIdentifyFlags(Ljava/lang/String;JI)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/ThemeInfo;ZJLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/thememanager/ThemeInfo;->apply(ZJLandroid/app/ProgressDialog;)V

    return-void
.end method

.method private apply(ZJLandroid/app/ProgressDialog;)V
    .locals 25
    .parameter "removeAllOld"
    .parameter "flags"
    .parameter "progressDialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v19, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 335
    .local v19, zipFile:Ljava/util/zip/ZipFile;
    move-wide/from16 v5, p2

    .line 336
    .local v5, applyFlags:J
    const/16 v17, 0x0

    .line 337
    .local v17, prepareIconStepCnt:I
    if-nez p1, :cond_0

    const-wide/16 v20, 0x8

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    .line 338
    :cond_0
    const/16 v17, 0xa

    .line 340
    :cond_1
    move/from16 v14, v17

    .line 341
    .local v14, iconNeedStep:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->size()I

    move-result v20

    add-int/lit8 v20, v20, 0xd

    add-int v20, v20, v14

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 344
    if-eqz p1, :cond_2

    .line 345
    const-string v20, "rm -rf %s/%s*"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "/data/system/theme"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, ""

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 347
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 351
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v11, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v20, -0x1

    cmp-long v20, v5, v20

    if-eqz v20, :cond_8

    .line 353
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    sget v20, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 354
    const-wide/16 v20, 0x1

    shl-long v7, v20, v12

    .line 355
    .local v7, component:J
    and-long v20, v5, v7

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    .line 353
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 359
    :cond_4
    sget-object v20, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v20, v20, v12

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    const-wide/16 v20, 0x4

    cmp-long v20, v7, v20

    if-nez v20, :cond_5

    .line 361
    const-string v20, "wallpaper/default_lock_wallpaper_800.jpg"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_5
    sget-object v20, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v20, v20, v12

    if-eqz v20, :cond_3

    .line 365
    const-string v20, "%s/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "preview"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    sget-object v23, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v23, v23, v12

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    .end local v7           #component:J
    :cond_6
    const-wide/16 v20, 0x1

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_7

    .line 370
    const-string v20, "description.xml"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .end local v12           #i:I
    :cond_7
    :goto_2
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 378
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 379
    .local v10, filter:Ljava/lang/String;
    const-string v20, "rm -rf %s/%s*"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "/data/system/theme"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 373
    .end local v10           #filter:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_8
    const-string v20, ""

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 381
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_9
    const-wide/32 v20, 0x10000000

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_a

    .line 383
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllThirdAppResourcePath()Ljava/util/List;

    move-result-object v18

    .line 384
    .local v18, thirdAppPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 385
    .local v16, path:Ljava/lang/String;
    const-string v20, "rm -rf %s/%s*"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "/data/system/theme"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v16, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/miui/android/resourcebrowser/ResourceHelper;->run(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    .line 388
    .end local v16           #path:Ljava/lang/String;
    .end local v18           #thirdAppPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 391
    const-string v20, "/data/system/theme"

    const-wide/32 v21, 0x10000000

    and-long v21, v21, p2

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/thememanager/Helper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 393
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V

    .line 394
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide/from16 v21, v0

    and-long v21, v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/data/system/theme"

    invoke-static/range {v20 .. v24}, Lcom/android/thememanager/ThemeHelper;->applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 401
    const-wide/16 v20, 0x2

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_b

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/android/thememanager/ThemeHelper;->applyWallpaper(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 404
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 406
    const-wide/16 v20, 0x4

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_c

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mEncodedPath:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/thememanager/ThemeHelper;->applyWallpaper(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 409
    :cond_c
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 412
    const-wide/32 v20, 0x8000

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/media/AudioManager;

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioManager;->reLoadSoundEffects()V

    .line 415
    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 418
    if-nez p1, :cond_e

    const-wide/16 v20, 0x8

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_f

    .line 419
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 422
    invoke-static {}, Landroid/app/ThemeResource;->resetIconResource()V

    .line 423
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 425
    invoke-static {}, Landroid/app/IconCustomizer;->clearCache()V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/thememanager/ThemeInfo$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/thememanager/ThemeInfo$1;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/app/ProgressDialog;I)V

    invoke-static/range {v20 .. v21}, Landroid/app/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Landroid/app/IconCustomizer$CustomizedIconsListener;)V

    .line 443
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 447
    :cond_f
    const-wide/16 v20, 0x1000

    and-long v20, v20, v5

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_11

    .line 448
    new-instance v15, Ljava/io/File;

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAppliedConfigFilePath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v15, oldConfigFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 450
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 452
    :cond_10
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/thememanager/ThemeHelper;->getLockstyleSDCardConfigPathFromThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v9, configFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 454
    invoke-static {v9, v15}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 455
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1ff

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 458
    .end local v9           #configFile:Ljava/io/File;
    .end local v15           #oldConfigFile:Ljava/io/File;
    :cond_11
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 459
    return-void

    .line 391
    .restart local p2
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_5
.end method

.method private checkCacheValid(Lcom/miui/android/resourcebrowser/ZipResourceCache;)Z
    .locals 3
    .parameter "themeCache"

    .prologue
    const/4 v2, 0x0

    .line 71
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/android/resourcebrowser/ZipResourceCache;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lcom/miui/android/resourcebrowser/ZipResourceCache;)V

    .line 73
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static varargs createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;
    .locals 12
    .parameter "context"
    .parameter "path"
    .parameter "cache"
    .parameter "args"

    .prologue
    const-wide/16 v10, 0x0

    .line 45
    const/4 v9, 0x0

    .line 47
    .local v9, result:Lcom/android/thememanager/ThemeInfo;
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 48
    .local v7, previewFlag:J
    const/4 v1, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 50
    .local v3, componentFlags:J
    new-instance v0, Lcom/android/thememanager/ThemeInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;JLcom/miui/android/resourcebrowser/ZipResourceCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .local v0, result:Lcom/android/thememanager/ThemeInfo;
    const-wide/16 v1, 0x1

    and-long/2addr v1, v7

    cmp-long v1, v1, v10

    if-eqz v1, :cond_2

    const-wide/16 v1, -0x1

    :goto_0
    :try_start_1
    iput-wide v1, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    .line 53
    iget-wide v1, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {v0, p2}, Lcom/android/thememanager/ThemeInfo;->checkCacheValid(Lcom/miui/android/resourcebrowser/ZipResourceCache;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/android/thememanager/ThemeInfo;->loadResourcePreviews()V

    .line 56
    iget-object p2, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lcom/miui/android/resourcebrowser/ZipResourceCache;

    .line 59
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/thememanager/ThemeInfo;->loadPreviewsFromCache(Lcom/miui/android/resourcebrowser/ZipResourceCache;)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    iput-object p2, v0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lcom/miui/android/resourcebrowser/ZipResourceCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v3           #componentFlags:J
    .end local v7           #previewFlag:J
    :cond_1
    :goto_1
    return-object v0

    .restart local v3       #componentFlags:J
    .restart local v7       #previewFlag:J
    :cond_2
    move-wide v1, v7

    .line 51
    goto :goto_0

    .line 63
    .end local v0           #result:Lcom/android/thememanager/ThemeInfo;
    .end local v3           #componentFlags:J
    .end local v7           #previewFlag:J
    .restart local v9       #result:Lcom/android/thememanager/ThemeInfo;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v0, v9

    .line 64
    .end local v9           #result:Lcom/android/thememanager/ThemeInfo;
    .restart local v0       #result:Lcom/android/thememanager/ThemeInfo;
    .local v6, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #componentFlags:J
    .restart local v7       #previewFlag:J
    :catch_1
    move-exception v1

    move-object v6, v1

    goto :goto_2
.end method

.method private generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "animationPath"
    .parameter "previewPath"

    .prologue
    .line 294
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 296
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 299
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x0

    .line 301
    .local v4, preview:Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    .line 302
    .local v3, maxName:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 303
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 304
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    .line 305
    const-string v6, ".png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 309
    :cond_1
    move-object v4, v2

    .line 310
    move-object v3, p1

    goto :goto_0

    .line 316
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v4, :cond_3

    .line 317
    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3           #maxName:Ljava/lang/String;
    .end local v4           #preview:Ljava/util/zip/ZipEntry;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 320
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .locals 4
    .parameter "zipfile"

    .prologue
    .line 222
    const-string v0, "preview/preview_cover_"

    .line 225
    .local v0, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "small_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .end local p0
    :goto_0
    return-object v2

    .restart local p0
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0
.end method

.method private getHomePagePosition(Ljava/util/ArrayList;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, previews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local p0
    .local v1, homePostion:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, isHead:Z
    sget-object v0, Lcom/android/thememanager/ThemeInfo;->PREVIEW_NAME_IN_FRONT_OF_HOME_PAGE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 148
    .local v5, tmp:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 149
    const/4 v3, 0x1

    .line 153
    .end local v5           #tmp:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_3

    .line 158
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #isHead:Z
    .end local v4           #len$:I
    :cond_1
    return v1

    .line 147
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #isHead:Z
    .restart local v4       #len$:I
    .restart local v5       #tmp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 145
    .end local v5           #tmp:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V
    .locals 14
    .parameter "zipfile"
    .parameter "componentFlag"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p4, retThumbnail:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, retPreview:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preview"

    invoke-static {v11}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, prefix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "big_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 242
    .local v3, biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "small_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 245
    .local v9, smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 246
    invoke-virtual {p0, p1, v8}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 250
    const-wide/16 v10, 0x1

    cmp-long v10, p2, v10

    if-nez v10, :cond_4

    .line 251
    const-string v10, "preview/"

    invoke-virtual {p0, p1, v10}, Lcom/android/thememanager/ThemeInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 280
    :cond_1
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 281
    move-object v9, v3

    .line 284
    :cond_2
    move-object/from16 v0, p4

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    move-object/from16 v0, p5

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    .end local v3           #biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #prefix:Ljava/lang/String;
    .end local v9           #smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void

    .line 253
    .restart local v3       #biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    .restart local v9       #smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-wide/16 v10, 0x80

    cmp-long v10, p2, v10

    if-nez v10, :cond_5

    .line 254
    const-string v10, "com.android.mms/res/drawable-hdpi/default_theme_preview.jpg"

    invoke-virtual {p0, p1, v10, v3}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 255
    const-string v10, "com.android.mms/res/drawable-hdpi/theme_default.jpg"

    invoke-virtual {p0, p1, v10, v3}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v3           #biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #prefix:Ljava/lang/String;
    .end local v9           #smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 287
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #prefix:Ljava/lang/String;
    .restart local v9       #smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-wide/16 v10, 0x20

    cmp-long v10, p2, v10

    if-nez v10, :cond_1

    .line 258
    :try_start_1
    const-string v10, "%s%s0.png"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, extractedPreview:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v6, extractedFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 264
    const-string v10, "boots/bootanimation.zip"

    invoke-virtual {p1, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 265
    .local v5, entry:Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_3

    .line 268
    const-string v10, "%sbootanimation.zip"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, animationFile:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v2, v7}, Lcom/android/thememanager/ThemeInfo;->generateAnimationPreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 274
    .end local v2           #animationFile:Ljava/lang/String;
    .end local v5           #entry:Ljava/util/zip/ZipEntry;
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 275
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseIdentifyFlags(Ljava/lang/String;JI)V
    .locals 4
    .parameter "zipFilePath"
    .parameter "cacheFlags"
    .parameter "uiVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 169
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    .line 173
    const-string v0, "/system/media/theme/default.mtz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Ljava/util/zip/ZipFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iget v1, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0

    .line 180
    :cond_3
    iput-wide p2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    goto :goto_0
.end method


# virtual methods
.method public apply_async(ZJLjava/lang/Runnable;)V
    .locals 7
    .parameter "removeAllOld"
    .parameter "componentFlags"
    .parameter "finishRunnable"

    .prologue
    .line 325
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;ZJLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method public convert_async(ZJLjava/lang/Runnable;)V
    .locals 7
    .parameter "removeAllOld"
    .parameter "componentFlags"
    .parameter "finishRunnable"

    .prologue
    .line 329
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;-><init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;ZJLjava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThemeInfo$ConvertThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 330
    return-void
.end method

.method protected getCacheInstance()Lcom/miui/android/resourcebrowser/ZipResourceCache;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    invoke-direct {v0, p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;-><init>(Lcom/android/thememanager/ThemeInfo;)V

    return-object v0
.end method

.method public getInformation()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 463
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v0, information:Landroid/os/Bundle;
    const-string v1, "m_title"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "designer"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v1, "filesize"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/thememanager/ThemeInfo;->mSize:J

    invoke-static {v2, v3, v4}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "ui_version"

    iget v2, p0, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    const-string v1, "m_lastupdate"

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo;->mLastModified:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    const-string v1, "local_path"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "local_preview"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 472
    const-string v1, "local_thumbnail"

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 473
    const-string v1, "modules"

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-object v0
.end method

.method protected loadPreviewsFromCache(Lcom/miui/android/resourcebrowser/ZipResourceCache;)V
    .locals 17
    .parameter "cache"

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    move-object v12, v0

    .line 91
    .local v12, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    move-wide v13, v0

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_6

    .line 92
    const-wide/32 v6, -0x8001

    .line 93
    .local v6, mask:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide v13, v0

    const-wide/16 v15, 0x8

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    const-wide/16 v13, 0x4000

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImageNumber(JZ)I

    move-result v13

    if-nez v13, :cond_5

    .line 95
    const-wide/16 v13, 0x8

    invoke-virtual {v12, v13, v14}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 96
    .local v5, iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    .line 97
    const-wide/16 v13, -0x9

    and-long/2addr v13, v6

    invoke-virtual {v12, v13, v14}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/thememanager/ThemeInfo;->getHomePagePosition(Ljava/util/ArrayList;)I

    move-result v3

    .line 99
    .local v3, homeInsertPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    .end local v3           #homeInsertPosition:I
    .end local v5           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v13, 0x1

    invoke-virtual {v12, v6, v7, v13}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    .line 112
    .end local v6           #mask:J
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    move-wide v13, v0

    const-wide/32 v15, 0x8000

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    const-string v13, "/system/media/theme/default.mtz"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 117
    new-instance v11, Ljava/io/File;

    const-string v13, "/system/media/audio/ui"

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v11, systemDir:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThemeInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v10, previewDir:Ljava/io/File;
    sget-object v13, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 120
    .local v8, name:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v9, originFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v2, cacheFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 125
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_3
    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    .end local v2           #cacheFile:Ljava/io/File;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #originFile:Ljava/io/File;
    .end local v10           #previewDir:Ljava/io/File;
    .end local v11           #systemDir:Ljava/io/File;
    .restart local v5       #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #mask:J
    :cond_4
    invoke-virtual {v12, v6, v7}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 104
    .end local v5           #iconPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-wide/16 v13, -0x9

    and-long/2addr v13, v6

    invoke-virtual {v12, v13, v14}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 108
    .end local v6           #mask:J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    move-wide v13, v0

    invoke-virtual {v12, v13, v14}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCachePreview(J)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 109
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviewFlag:J

    move-wide v13, v0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheThumbnail(JZ)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 130
    .restart local v2       #cacheFile:Ljava/io/File;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #originFile:Ljava/io/File;
    .restart local v10       #previewDir:Ljava/io/File;
    .restart local v11       #systemDir:Ljava/io/File;
    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 136
    .end local v2           #cacheFile:Ljava/io/File;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #originFile:Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mThumbnails:Ljava/util/ArrayList;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 126
    .restart local v2       #cacheFile:Ljava/io/File;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #originFile:Ljava/io/File;
    :catch_0
    move-exception v13

    goto :goto_4
.end method

.method public loadResourcePreviews()V
    .locals 14

    .prologue
    .line 186
    const-string v0, "ResourceBrowser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load preview for file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    iget-object v9, p0, Lcom/android/thememanager/ThemeInfo;->mZipResourceCache:Lcom/miui/android/resourcebrowser/ZipResourceCache;

    check-cast v9, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;

    .line 191
    .local v9, themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 192
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v2, v0, v6

    .line 193
    .local v2, componentFlag:J
    iget-wide v10, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    and-long/2addr v10, v2

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_0

    .line 191
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 197
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v4, componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->loadPreviewForComponent(Ljava/util/zip/ZipFile;JLjava/util/List;Ljava/util/List;)V

    .line 201
    const-wide/16 v10, 0x8

    cmp-long v0, v2, v10

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const-string v0, "icons/com.android.mms.png"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v4}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 210
    :cond_1
    :goto_2
    invoke-virtual {v9, v2, v3, v4}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheThumbnail(JLjava/util/ArrayList;)V

    .line 211
    invoke-virtual {v9, v2, v3, v5}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCachePreview(JLjava/util/ArrayList;)V

    goto :goto_1

    .line 217
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    .end local v2           #componentFlag:J
    .end local v4           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v9           #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :catch_0
    move-exception v0

    .line 219
    :goto_3
    return-void

    .line 203
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    .restart local v2       #componentFlag:J
    .restart local v4       #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v9       #themeCache:Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
    :cond_2
    const-wide/32 v10, 0x8000

    cmp-long v0, v2, v10

    if-nez v0, :cond_1

    .line 204
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 205
    .local v8, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioeffect"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/thememanager/ThemeInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    goto :goto_4

    .line 207
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 213
    .end local v2           #componentFlag:J
    .end local v4           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/thememanager/ThemeInfo;->getCoverThumbnailPath(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCoverThumbnail(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v9}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->finishCached()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method saveUserPreference(ZJ)V
    .locals 14
    .parameter "removeAll"
    .parameter "applyFlags"

    .prologue
    .line 478
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->getAllComponentsCombineFlag()J

    move-result-wide v0

    move-wide v10, v0

    .line 481
    .local v10, componentFlags:J
    :goto_0
    and-long v12, p2, v10

    .line 482
    .local v12, saveFlags:J
    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    xor-long/2addr v0, v12

    move-wide v8, v0

    .line 484
    .local v8, clearFlags:J
    :goto_1
    sget-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    or-long v6, v0, v2

    .line 487
    .local v6, audioImageFlagMask:J
    const-wide/16 v0, -0x1

    xor-long/2addr v0, v6

    and-long v1, v12, v0

    const-wide/16 v3, -0x1

    xor-long/2addr v3, v6

    and-long/2addr v3, v8

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 488
    and-long v1, v12, v6

    and-long v3, v8, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V

    .line 489
    return-void

    .line 478
    .end local v6           #audioImageFlagMask:J
    .end local v8           #clearFlags:J
    .end local v10           #componentFlags:J
    .end local v12           #saveFlags:J
    :cond_0
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    move-wide v10, v0

    goto :goto_0

    .line 482
    .restart local v10       #componentFlags:J
    .restart local v12       #saveFlags:J
    :cond_1
    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_1
.end method
