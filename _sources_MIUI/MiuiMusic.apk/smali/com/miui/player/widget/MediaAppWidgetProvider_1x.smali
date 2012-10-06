.class public Lcom/miui/player/widget/MediaAppWidgetProvider_1x;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider_1x.java"


# static fields
.field private static sAlbumChange:Z

.field private static sCurrentAlbum:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4
    .parameter "context"
    .parameter "views"

    .prologue
    .line 54
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 55
    .local v1, gm:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 56
    .local v0, appWidgetIds:[I
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v1, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 59
    :cond_0
    return-void
.end method

.method private updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "views"
    .parameter "intent"

    .prologue
    const v11, 0x7f0c0021

    const v10, 0x7f0c0020

    const v9, 0x7f0c0009

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 117
    .local v3, size:I
    const-string v5, "display_album"

    invoke-static {p1, v5}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, bm:Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    if-nez v5, :cond_1

    .line 120
    sget-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    .line 140
    :goto_0
    if-eqz v0, :cond_5

    .line 141
    invoke-virtual {p2, v9, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 142
    invoke-virtual {p2, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    invoke-virtual {p2, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    invoke-virtual {p2, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 122
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_1
    const-string v5, "album_path"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, path:Ljava/lang/String;
    const-string v5, "album_uri"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 124
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "android_album"

    invoke-static {p1, v5}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-static {p1, v4, v3, v3}, Lcom/miui/player/helper/AlbumManager;->getAlbumBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    invoke-static {v1, v3, v3}, Lcom/miui/player/helper/AlbumManager;->getXShareArtworkQuick(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .end local v1           #file:Ljava/io/File;
    :cond_3
    if-eqz v0, :cond_4

    .line 134
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/miui/player/helper/Global;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    :cond_4
    sput-boolean v7, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 137
    sput-object v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sCurrentAlbum:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 146
    .end local v2           #path:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p2, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    invoke-virtual {p2, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    invoke-virtual {p2, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 67
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 68
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const-string v10, "android.intent.action.MEDIA_EJECT"

    .line 73
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-string v0, "oneshot"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 79
    .local v8, isOneShot:Z
    if-nez v8, :cond_0

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.miui.player.init_gadget"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 87
    .end local v9           #updateIntent:Landroid/content/Intent;
    :cond_2
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :cond_3
    const-string v0, "other"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, extra:Ljava/lang/String;
    const-string v0, "meta_changed_buffer"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meta_changed_lyric"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string v0, "meta_changed_track"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "meta_changed_album"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->sAlbumChange:Z

    .line 102
    :cond_5
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v10, 0x7f03000a

    invoke-direct {v1, v0, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-direct {p0, p1, v1, p2}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->updateAlbum(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 104
    const-string v0, "album"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, albumName:Ljava/lang/String;
    const-string v0, "track"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, trackName:Ljava/lang/String;
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, artistName:Ljava/lang/String;
    const-string v0, "playing"

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, isPlaying:Z
    move-object v0, p1

    .line 109
    invoke-static/range {v0 .. v5}, Lcom/miui/player/widget/PlaybackViewController;->updateViews(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    invoke-static {p1, v1, v5}, Lcom/miui/player/widget/PlaybackViewController;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 111
    invoke-direct {p0, p1, v1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->pushUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/player/widget/MediaAppWidgetProvider_1x;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.init_gadget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    return-void
.end method
