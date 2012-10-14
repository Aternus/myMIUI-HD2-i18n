.class public Lcom/android/gallery/ui/MovieView;
.super Landroid/app/Activity;
.source "MovieView.java"


# instance fields
.field private mControl:Lcom/android/gallery/view/MovieViewControl;

.field private mFinishOnCompletion:Z

.field private mRotationObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Lcom/android/gallery/ui/MovieView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/MovieView$2;-><init>(Lcom/android/gallery/ui/MovieView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery/ui/MovieView;->mRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/MovieView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/gallery/ui/MovieView;->mFinishOnCompletion:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/MovieView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/gallery/ui/MovieView;->updateOrientation()V

    return-void
.end method

.method private updateOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 114
    .local v0, allowRotation:Z
    :goto_0
    sget-boolean v2, Landroid/os/Build;->IS_DEFY:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_3

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, orientation:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.screenOrientation"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getRequestedOrientation()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/MovieView;->setRequestedOrientation(I)V

    .line 123
    :cond_1
    return-void

    .end local v0           #allowRotation:Z
    .end local v1           #orientation:I
    :cond_2
    move v0, v4

    .line 109
    goto :goto_0

    .line 117
    .restart local v0       #allowRotation:Z
    :cond_3
    const/4 v1, 0x4

    .restart local v1       #orientation:I
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v5, 0x7f030011

    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/MovieView;->setContentView(I)V

    .line 54
    const v5, 0x7f0c0048

    invoke-virtual {p0, v5}, Lcom/android/gallery/ui/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, rootView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, videoUri:Landroid/net/Uri;
    new-instance v5, Lcom/android/gallery/ui/MovieView$1;

    invoke-direct {v5, p0, v1, p0, v2}, Lcom/android/gallery/ui/MovieView$1;-><init>(Lcom/android/gallery/ui/MovieView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/gallery/ui/MovieView;->mControl:Lcom/android/gallery/view/MovieViewControl;

    .line 76
    invoke-direct {p0}, Lcom/android/gallery/ui/MovieView;->updateOrientation()V

    .line 78
    const-string v5, "android.intent.extra.finishOnCompletion"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/gallery/ui/MovieView;->mFinishOnCompletion:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 80
    .local v3, win:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 81
    .local v4, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x0

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 82
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView;->mControl:Lcom/android/gallery/view/MovieViewControl;

    invoke-virtual {v0}, Lcom/android/gallery/view/MovieViewControl;->onDestroy()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView;->mControl:Lcom/android/gallery/view/MovieViewControl;

    invoke-virtual {v0}, Lcom/android/gallery/view/MovieViewControl;->onPause()V

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/MovieView;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView;->mControl:Lcom/android/gallery/view/MovieViewControl;

    invoke-virtual {v0}, Lcom/android/gallery/view/MovieViewControl;->onResume()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery/ui/MovieView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery/ui/MovieView;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    return-void
.end method
