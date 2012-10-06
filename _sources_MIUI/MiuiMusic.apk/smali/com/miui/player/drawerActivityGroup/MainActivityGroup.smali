.class public Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
.super Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;
.source "MainActivityGroup.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/drawerActivityGroup/MainActivityGroup$1;,
        Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;,
        Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;,
        Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;
    }
.end annotation


# static fields
.field private static final DRAWER_CLOSE_ACTION:[Ljava/lang/String; = null

.field private static final DRAWER_INTENT:Ljava/lang/String; = "com.miui.music.NOW_PLAYING"

.field private static final LAUNCH_ACTION:[Ljava/lang/String; = null

.field private static final MAIN_BG_INTENT:Ljava/lang/String; = "com.miui.music.MEDIA_PLAYER"

.field public static final ON_SLIDE_END:Ljava/lang/String; = "com.miui.music.slide_end"

.field public static final ON_SLIDE_START:Ljava/lang/String; = "com.miui.music.slide_start"


# instance fields
.field private mDrawerIntent:Landroid/content/Intent;

.field private mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

.field mPlayAfterSlide:Z

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mServiceConnectionDone:Z

.field private mServiceObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "android.intent.action.MAIN"

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.intent.action.MAIN"

    aput-object v6, v0, v2

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    aput-object v1, v0, v3

    const-string v1, "com.miui.music.MEDIA_PLAYER"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->LAUNCH_ACTION:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.MAIN"

    aput-object v6, v0, v3

    const-string v1, "com.miui.music.EDIT"

    aput-object v1, v0, v4

    const-string v1, "com.miui.music.MEDIA_PLAYER"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "com.miui.music.PICK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.SEARCH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->DRAWER_CLOSE_ACTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;-><init>()V

    .line 150
    iput-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    .line 438
    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mPlayAfterSlide:Z

    .line 501
    iput-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 503
    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceConnectionDone:Z

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceObserverList:Ljava/util/ArrayList;

    .line 587
    return-void
.end method

.method static synthetic access$200(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerSliding(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)Lcom/miui/player/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object v0
.end method

.method private cloneIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "intent"
    .parameter "replaceAction"

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 232
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, i:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 236
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, type:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 239
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 245
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-object v1

    .line 229
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "intent == null && replaceAction == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getCommitView(Landroid/app/Activity;)Landroid/view/View;
    .locals 4
    .parameter "a"

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 492
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v3, :cond_0

    .line 493
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    move-object v1, v0

    .line 494
    .local v1, group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getCommitView()Landroid/view/View;

    move-result-object v3

    .line 497
    .end local v1           #group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNowplayingBar(Landroid/app/Activity;)Landroid/view/View;
    .locals 4
    .parameter "a"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 479
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v3, :cond_0

    .line 480
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    move-object v1, v0

    .line 481
    .local v1, group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getNowplayingBar()Landroid/view/View;

    move-result-object v3

    .line 484
    .end local v1           #group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSecondLevelName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->peekIntent()Landroid/content/Intent;

    move-result-object v1

    .line 334
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.miui.music.EDIT"

    invoke-virtual {p0, v4}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getInternalAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, internalAction:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    const-string v4, "playlist"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, playlist:Ljava/lang/String;
    const-string v4, "nowplaying"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v4, v3

    .line 346
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #internalAction:Ljava/lang/String;
    .end local v3           #playlist:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getServiceFromParent(Landroid/app/Activity;)Lcom/miui/player/IMediaPlaybackService;
    .locals 2
    .parameter "a"

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 545
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v1, :cond_0

    .line 546
    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getService()Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    .line 549
    :goto_0
    return-object v1

    .restart local v0       #parent:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLaunchActivity()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 200
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 201
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->LAUNCH_ACTION:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 205
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 213
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #str:Ljava/lang/String;
    :goto_1
    return v6

    .line 204
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v5           #str:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .end local v0           #action:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_2
    move v6, v7

    .line 213
    goto :goto_1
.end method

.method private isSingleContent(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 326
    if-eqz p1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyServiceConnectionWaiters()V
    .locals 3

    .prologue
    .line 574
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceObserverList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;

    .line 575
    .local v1, observer:Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1, v2}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;->notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V

    goto :goto_0

    .line 577
    .end local v1           #observer:Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;
    :cond_0
    return-void
.end method

.method public static refreshNowPlayingBar(Landroid/app/Activity;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 457
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v3, :cond_0

    .line 458
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    move-object v1, v0

    .line 459
    .local v1, group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->refreshNowPlayingBar()V

    .line 461
    .end local v1           #group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    :cond_0
    return-void
.end method

.method public static registerParentServiceConnection(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V
    .locals 2
    .parameter "a"
    .parameter "observer"

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 582
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v1, :cond_0

    .line 583
    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    .end local v0           #parent:Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->registerServiceConnection(Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V

    .line 585
    :cond_0
    return-void
.end method

.method private registerServiceConnection(Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceConnectionDone:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {p1, v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;->notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDrawerSliding(ZZ)V
    .locals 3
    .parameter "isSliding"
    .parameter "isClose"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 534
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 535
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Lcom/miui/player/ui/MediaPlaybackActivity;->setSliding(ZZ)V

    .line 537
    :cond_0
    return-void
.end method

.method public static setTitleVisible(Landroid/app/Activity;II)V
    .locals 4
    .parameter "a"
    .parameter "visible"
    .parameter "textId"

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 468
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v3, :cond_0

    .line 469
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    move-object v1, v0

    .line 470
    .local v1, group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    invoke-virtual {v1, p1, p2}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setTitleVisible(II)V

    .line 472
    .end local v1           #group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    :cond_0
    return-void
.end method

.method private startChildActivity()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 218
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 219
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->cloneIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->pushBgChild(Landroid/content/Intent;)V

    .line 222
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static startDrawerChild(Landroid/app/Activity;Z)Z
    .locals 4
    .parameter "a"
    .parameter "play"

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 554
    .local v2, parent:Landroid/app/Activity;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    if-eqz v3, :cond_0

    .line 555
    move-object v0, v2

    check-cast v0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    move-object v1, v0

    .line 556
    .local v1, group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    invoke-virtual {v1, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setPlayAfterSlide(Z)V

    .line 557
    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->openDrawerChild()V

    .line 558
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerIntent(Landroid/content/Intent;)V

    .line 561
    .end local v1           #group:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method protected afterBgChange(Z)V
    .locals 0
    .parameter "push"

    .prologue
    .line 289
    return-void
.end method

.method protected beforeBgChange(Z)V
    .locals 1
    .parameter "push"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getSecondLevelName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->popBgChild()V

    .line 285
    :cond_0
    return-void
.end method

.method public getDrawerIntent()Landroid/content/Intent;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v8, Lcom/miui/player/ui/MediaPlaybackActivity;

    .line 250
    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->cloneIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 253
    .local v1, i:Landroid/content/Intent;
    const-class v4, Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, data:Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 259
    :cond_0
    iput-boolean v7, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOneShotLast:Z

    .line 260
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->freezeDrawer()V

    :goto_0
    move-object v2, v1

    .line 271
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #scheme:Ljava/lang/String;
    .local v2, i:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 262
    .end local v2           #i:Landroid/content/Intent;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_1
    iput-boolean v6, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOneShotLast:Z

    .line 263
    const-string v4, "new_intent"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 268
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #scheme:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    const-string v5, "com.miui.music.NOW_PLAYING"

    invoke-direct {p0, v4, v5}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->cloneIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    .restart local v1       #i:Landroid/content/Intent;
    const-class v4, Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 270
    iput-boolean v6, p0, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->mOneShotLast:Z

    move-object v2, v1

    .line 271
    .end local v1           #i:Landroid/content/Intent;
    .restart local v2       #i:Landroid/content/Intent;
    goto :goto_1
.end method

.method protected getInternalAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawAction"

    .prologue
    .line 321
    const-string v0, ".internal"

    .line 322
    .local v0, POST_FIX:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".internal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMainBgIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.MEDIA_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNowplayingBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/miui/player/IMediaPlaybackService;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object v0
.end method

.method protected isDrawerCloseIntent(Landroid/content/Intent;)Z
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 294
    if-nez p1, :cond_0

    move v7, v8

    .line 316
    :goto_0
    return v7

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, action:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->DRAWER_CLOSE_ACTION:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v1, v3

    .line 301
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    .line 302
    goto :goto_0

    .line 300
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    .end local v6           #str:Ljava/lang/String;
    :cond_2
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, scheme:Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 309
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, data:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isSingleContent(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_0

    .line 313
    .end local v2           #data:Ljava/lang/String;
    :cond_4
    const-string v7, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "http"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v8

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_0

    .end local v5           #scheme:Ljava/lang/String;
    :cond_6
    move v7, v9

    .line 316
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 70
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0, v4}, Landroid/view/Window;->setFormat(I)V

    .line 71
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 73
    invoke-static {p0, p0}, Lcom/miui/player/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 74
    new-instance v1, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;

    invoke-direct {v1, p0, v5}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$PlayerDrawerListener;-><init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$1;)V

    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerListener(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$DrawerListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerIntent(Landroid/content/Intent;)V

    .line 76
    new-instance v1, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    new-instance v2, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;

    invoke-direct {v2, p0, v5}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;-><init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$1;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;-><init>(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;)V

    iput-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    .line 78
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v1, v3, v3}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateState(ZZ)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->switchDrawer(Z)V

    .line 81
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setVolumeControlStream(I)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 87
    invoke-super {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onDestroy()V

    .line 88
    return-void
.end method

.method public onDrawerNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "newIntent"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 142
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->playNew(Landroid/content/Intent;)V

    .line 146
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerIntent(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "newIntent"

    .prologue
    const/high16 v5, 0x10

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 117
    .local v1, flag:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    and-int v4, v1, v5

    if-ne v4, v5, :cond_2

    .line 119
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 125
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, path:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setIntent(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerIntent(Landroid/content/Intent;)V

    .line 136
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->switchDrawer(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->unregister()V

    .line 99
    invoke-super {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onPause()V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->register()V

    .line 94
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 509
    invoke-static {p2}, Lcom/miui/player/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 511
    iput-boolean v3, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceConnectionDone:Z

    .line 512
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->notifyServiceConnectionWaiters()V

    .line 513
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerChildClose()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateState(ZZ)V

    .line 514
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    .line 515
    return-void

    :cond_0
    move v1, v2

    .line 513
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->finish()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mServiceConnectionDone:Z

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 522
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    .line 523
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->notifyServiceConnectionWaiters()V

    .line 524
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->onStop()V

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected prepareSlide()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->prepareSlide()V

    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerChildClose()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setDrawerSliding(ZZ)V

    .line 530
    return-void
.end method

.method public refreshNowPlayingBar()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mNowplayingBarController:Lcom/miui/player/drawerActivityGroup/NowplayingBarController;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    .line 446
    return-void
.end method

.method public setDrawerIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "playlist"

    .line 154
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v2, "playlist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, playlist:Ljava/lang/String;
    const-string v2, "$$miui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "playlist"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .end local v1           #playlist:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerCloseIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mDrawerIntent:Landroid/content/Intent;

    .line 164
    if-eqz p1, :cond_1

    .line 166
    const-string v0, "from_widget"

    .line 167
    .local v0, WIDGET_SELECTION:Ljava/lang/String;
    const-string v2, "from_widget"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-static {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 173
    .end local v0           #WIDGET_SELECTION:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setPlayAfterSlide(Z)V
    .locals 0
    .parameter "playAfterSlide"

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->mPlayAfterSlide:Z

    .line 442
    return-void
.end method

.method protected switchDrawer(Z)V
    .locals 4
    .parameter "isCreate"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isLaunchActivity()Z

    move-result v2

    .line 177
    .local v2, isLaunch:Z
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerCloseIntent(Landroid/content/Intent;)Z

    move-result v1

    .line 183
    .local v1, isCloseIntent:Z
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerChildClose()Z

    move-result v0

    .line 184
    .local v0, isClose:Z
    if-eqz v1, :cond_3

    .line 185
    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->closeDrawerChild()V

    .line 189
    :cond_2
    if-nez v2, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->startChildActivity()V

    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->startDrawerSlide(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->openDrawerChildView()V

    goto :goto_0
.end method
