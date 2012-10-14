.class public Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplyThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mApplyFlags:J

.field private mContext:Landroid/content/Context;

.field private mFinishRunnable:Ljava/lang/Runnable;

.field private mOldLockscrrenContainThemeValue:Z

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRemoveAllOld:Z

.field private mRestoreDefaultFlags:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;Landroid/content/Context;ZJLjava/lang/Runnable;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "removeAllOld"
    .parameter "applyFlags"
    .parameter "finishRunnable"

    .prologue
    const-wide/16 v4, 0x0

    .line 501
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    .line 502
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 503
    iput-object p2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    .line 504
    iput-boolean p3, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveAllOld:Z

    .line 505
    iget v0, p1, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v0, p4, p5}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    .line 506
    iput-object p6, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    .line 508
    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    iget-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    .line 512
    :cond_1
    return-void
.end method

.method private restoreDefaultComponent()J
    .locals 12

    .prologue
    .line 561
    const-wide/16 v5, 0x0

    .line 563
    .local v5, restoreFlags:J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v3, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-wide/16 v0, 0x1

    .local v0, componentFlag:J
    :goto_0
    const-wide/32 v8, 0x8000

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    .line 565
    sget-wide v8, Lcom/android/thememanager/ThemeHelper;->DEFAULT_THEME_FLAGS:J

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 566
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v4

    .line 567
    .local v4, index:I
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v2, v8, v4

    .line 568
    .local v2, componentName:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/system/theme/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 569
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    or-long/2addr v5, v0

    .line 564
    .end local v2           #componentName:Ljava/lang/String;
    .end local v4           #index:I
    :cond_0
    const/4 v8, 0x1

    shl-long/2addr v0, v8

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 576
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    const-string v8, "/system/media/theme/default.mtz"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 577
    .local v7, zipFile:Ljava/util/zip/ZipFile;
    const-string v8, "/data/system/theme"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v3, v9, v10}, Lcom/android/thememanager/Helper;->unzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;ZLandroid/app/ProgressDialog;)V

    .line 578
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v7           #zipFile:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_1
    return-wide v5

    .line 579
    :catch_0
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method containLockscreenThemeValue()Z
    .locals 3

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 589
    .local v0, ret:Z
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    const-string v2, "/data/system/theme/lockscreen"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    const-string v2, "theme_values.xml"

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 591
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_1
    return v0

    .line 590
    .restart local v1       #zipfile:Ljava/util/zip/ZipFile;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 592
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "object"

    .prologue
    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-boolean v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveAllOld:Z

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    #calls: Lcom/android/thememanager/ThemeInfo;->apply(ZJLandroid/app/ProgressDialog;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/thememanager/ThemeInfo;->access$000(Lcom/android/thememanager/ThemeInfo;ZJLandroid/app/ProgressDialog;)V

    .line 529
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v0, v0, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    const-string v1, "/system/media/theme/default.mtz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->restoreDefaultComponent()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRestoreDefaultFlags:J

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .parameter "object"

    .prologue
    const-wide/16 v8, 0x2000

    const-wide/16 v6, 0x0

    .line 540
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 541
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-boolean v3, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveAllOld:Z

    iget-wide v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/thememanager/ThemeInfo;->saveUserPreference(ZJ)V

    .line 542
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 547
    :cond_0
    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    iget-wide v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRestoreDefaultFlags:J

    or-long v0, v2, v4

    .line 548
    .local v0, configurationFlag:J
    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mRemoveAllOld:Z

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mApplyFlags:J

    const-wide/16 v4, 0x1000

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 550
    :cond_1
    iget-boolean v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mOldLockscrrenContainThemeValue:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->containLockscreenThemeValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    :cond_2
    or-long/2addr v0, v8

    .line 555
    :cond_3
    const-string v2, "ThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------- apply theme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->this$0:Lcom/android/thememanager/ThemeInfo;

    iget-object v4, v4, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->sendThemeConfigurationChangeMsg(J)V

    .line 557
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    .line 558
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 516
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 517
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 518
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 521
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ApplyThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 522
    return-void
.end method
