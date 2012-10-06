.class Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;
.super Ljava/lang/Object;
.source "MainActivityGroup.java"

# interfaces
.implements Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/MainActivityGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlaybackImageProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;


# direct methods
.method private constructor <init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;-><init>(Lcom/miui/player/drawerActivityGroup/MainActivityGroup;)V

    return-void
.end method


# virtual methods
.method public getCurrentImage()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getActiveIndexerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    :goto_0
    return-object v1

    .restart local v0       #a:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClockwise()Z
    .locals 3

    .prologue
    .line 399
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 400
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isClockwise()Z

    move-result v1

    .line 404
    :goto_0
    return v1

    .restart local v0       #a:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 375
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_1

    .line 376
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isAnimationPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 378
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 376
    goto :goto_0

    .restart local v0       #a:Landroid/app/Activity;
    :cond_1
    move v1, v3

    .line 378
    goto :goto_0
.end method

.method public isShowCurrentMask()Z
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isActiveIndexerMask()Z

    move-result v1

    .line 369
    :goto_0
    return v1

    .restart local v0       #a:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onOperationClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    const-string v2, "DRAWER_ACTIVITY_ID"

    invoke-virtual {v1, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 384
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    if-eqz v1, :cond_0

    .line 385
    check-cast v0, Lcom/miui/player/ui/MediaPlaybackActivity;

    .end local v0           #a:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->clickExternalIndexer()V

    .line 387
    :cond_0
    return-void
.end method

.method public onQueueChanged()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->isDrawerChildClose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setPlayAfterSlide(Z)V

    .line 393
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/MainActivityGroup$MediaPlaybackImageProvider;->this$0:Lcom/miui/player/drawerActivityGroup/MainActivityGroup;

    invoke-virtual {v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->openDrawerChild()V

    .line 395
    :cond_0
    return-void
.end method
