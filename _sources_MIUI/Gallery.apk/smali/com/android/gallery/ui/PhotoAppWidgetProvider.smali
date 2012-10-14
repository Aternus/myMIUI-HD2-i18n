.class public Lcom/android/gallery/ui/PhotoAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 70
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;ILcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "helper"

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p1}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->getPhoto(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030012

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 65
    .restart local v1       #views:Landroid/widget/RemoteViews;
    const v2, 0x7f0c004b

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 67
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 50
    new-instance v2, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, helper:Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    move-object v1, p2

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 52
    .local v0, appWidgetId:I
    invoke-virtual {v2, v0}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->deletePhoto(I)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v0           #appWidgetId:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 55
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 33
    new-instance v2, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 34
    .local v2, helper:Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;
    move-object v1, p3

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    .line 35
    .local v0, appWidgetId:I
    const/4 v7, 0x1

    new-array v5, v7, [I

    const/4 v7, 0x0

    aput v0, v5, v7

    .line 38
    .local v5, specificAppWidget:[I
    invoke-static {p1, v0, v2}, Lcom/android/gallery/ui/PhotoAppWidgetProvider;->buildUpdate(Landroid/content/Context;ILcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 40
    .local v6, views:Landroid/widget/RemoteViews;
    const-string v7, "xpicture/PhotoAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sending out views="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p2, v5, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0           #appWidgetId:I
    .end local v5           #specificAppWidget:[I
    .end local v6           #views:Landroid/widget/RemoteViews;
    :cond_0
    invoke-virtual {v2}, Lcom/android/gallery/ui/PhotoAppWidgetProvider$PhotoDatabaseHelper;->close()V

    .line 45
    return-void
.end method
