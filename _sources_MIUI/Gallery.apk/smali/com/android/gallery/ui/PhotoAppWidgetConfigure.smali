.class public abstract Lcom/android/gallery/ui/PhotoAppWidgetConfigure;
.super Landroid/app/Activity;
.source "PhotoAppWidgetConfigure.java"


# instance fields
.field mAppWidgetId:I

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abstract getCellsHeight()I
.end method

.method public abstract getCellsWidth()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-ne p2, v7, :cond_4

    iget v6, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-eq v6, v7, :cond_4

    .line 84
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const v7, 0x5b8d80

    invoke-static {p0, v6, v7}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    new-instance v3, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v3, helper:Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    iget v6, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v3, v6, v1}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    const/4 p2, -0x1

    .line 91
    iget v6, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-static {p0, v6, v3}, Lcom/android/gallery/ui/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 92
    .local v5, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 93
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    aput v8, v6, v7

    invoke-virtual {v0, v6, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 95
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v5           #views:Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v3}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v3           #helper:Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    :cond_1
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v4, resultValue:Landroid/content/Intent;
    const-string v6, "appWidgetId"

    iget v7, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, p2, v4}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 108
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 109
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->tempFile:Ljava/io/File;

    if-eqz v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->tempFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->finish()V

    .line 115
    return-void

    .line 97
    .end local v4           #resultValue:Landroid/content/Intent;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 98
    .local v2, e:Ljava/lang/Exception;
    const/4 p2, 0x0

    .line 99
    goto :goto_0

    .line 101
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    .line 44
    iget v0, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->mAppWidgetId:I

    if-ne v0, v2, :cond_0

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->finish()V

    .line 75
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    const-string v0, "temp"

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->tempFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->getCellsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x50

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->getCellsHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    .line 62
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v3, "aspectX"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v3, "aspectY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v3, "outputX"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v1, "noShowToast"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "output"

    iget-object v2, p0, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->tempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const-class v1, Lcom/android/gallery/ui/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetConfigure;->finish()V

    goto :goto_0
.end method
