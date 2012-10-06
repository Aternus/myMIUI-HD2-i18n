.class public Lcom/android/gallery/ui/PhotoAppWidgetBind;
.super Landroid/app/Activity;
.source "PhotoAppWidgetBind.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetBind;->finish()V

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery/ui/PhotoAppWidgetBind;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 31
    .local v6, intent:Landroid/content/Intent;
    const-string v8, "appWidgetIds"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 32
    .local v1, appWidgetIds:[I
    const-string v8, "com.android.camera.appwidgetbitmaps"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 34
    .local v3, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    array-length v8, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 36
    :cond_0
    const-string v8, "Gallery/PhotoAppWidgetBind"

    const-string v9, "Problem parsing photo widget bind request"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 41
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v4, p0}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 42
    .local v4, helper:Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v1

    if-ge v5, v8, :cond_2

    .line 44
    aget v0, v1, v5

    .line 45
    .local v0, appWidgetId:I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0, v8}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->setPhoto(ILandroid/graphics/Bitmap;)Z

    .line 48
    invoke-static {p0, v0, v4}, Lcom/android/gallery/ui/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 50
    .local v7, views:Landroid/widget/RemoteViews;
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    invoke-virtual {v2, v8, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 52
    .end local v0           #appWidgetId:I
    .end local v7           #views:Landroid/widget/RemoteViews;
    :cond_2
    invoke-virtual {v4}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    goto :goto_0
.end method
