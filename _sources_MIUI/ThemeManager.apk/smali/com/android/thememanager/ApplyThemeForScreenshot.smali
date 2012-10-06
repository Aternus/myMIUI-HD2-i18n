.class public Lcom/android/thememanager/ApplyThemeForScreenshot;
.super Landroid/app/Activity;
.source "ApplyThemeForScreenshot.java"


# instance fields
.field mThemeInfo:Lcom/android/thememanager/ThemeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    return-void
.end method


# virtual methods
.method back()V
    .locals 5

    .prologue
    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, resultIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "flag"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-wide v3, v3, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    const-string v2, "path"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "author"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "version"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget-object v3, v3, Lcom/android/thememanager/ThemeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "uiVersion"

    iget-object v3, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    iget v3, v3, Lcom/android/thememanager/ThemeInfo;->mPlatformVersion:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->finish()V

    .line 52
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, localPath:Ljava/lang/String;
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    .local v7, tv:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u5e94\u7528\u4e3b\u9898\uff0c\u8bf7\u7a0d\u5019!\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0, v7}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setContentView(Landroid/view/View;)V

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p0, v6, v1, v2}, Lcom/android/thememanager/ThemeInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lcom/miui/android/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lcom/android/thememanager/ThemeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    .line 26
    iget-object v1, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    if-eqz v1, :cond_0

    .line 27
    new-instance v3, Lcom/android/thememanager/ApplyThemeForScreenshot$1;

    invoke-direct {v3, p0}, Lcom/android/thememanager/ApplyThemeForScreenshot$1;-><init>(Lcom/android/thememanager/ApplyThemeForScreenshot;)V

    .line 32
    .local v3, run:Ljava/lang/Runnable;
    const-wide/16 v1, -0x1

    iget-object v4, p0, Lcom/android/thememanager/ApplyThemeForScreenshot;->mThemeInfo:Lcom/android/thememanager/ThemeInfo;

    move v5, v0

    invoke-static/range {v0 .. v5}, Lcom/android/thememanager/ThemeHelper;->applyTheme(ZJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V

    .line 37
    .end local v3           #run:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/thememanager/ApplyThemeForScreenshot;->setResult(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/thememanager/ApplyThemeForScreenshot;->finish()V

    goto :goto_0
.end method
