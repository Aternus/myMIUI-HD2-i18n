.class public Lcom/miui/player/ui/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$OnDialogCallback;
.implements Lcom/miui/player/helper/SongScanListener$SongScanner;


# instance fields
.field private mPaused:Z

.field private mSongScanListener:Lcom/miui/player/helper/SongScanListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseActivity;->mPaused:Z

    return-void
.end method


# virtual methods
.method protected enableDatabaseError(ZZ)Z
    .locals 1
    .parameter "enable"
    .parameter "alphabetScroller"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/helper/SongScanListener;->enableDatabaseError(ZZ)Z

    move-result v0

    return v0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/miui/player/ui/BaseActivity;->mPaused:Z

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/player/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 23
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/BaseActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/BaseActivity;->requestWindowFeature(I)Z

    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/BaseActivity;->setVolumeControlStream(I)V

    .line 26
    invoke-virtual {p0}, Lcom/miui/player/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    new-instance v0, Lcom/miui/player/helper/SongScanListener;

    invoke-direct {v0, p0, p0, p0}, Lcom/miui/player/helper/SongScanListener;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/SongScanListener$SongScanner;Lcom/miui/player/MusicUtils$OnDialogCallback;)V

    iput-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    .line 29
    iget-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onCreate()V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onDestroy()V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseActivity;->mPaused:Z

    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onPause()V

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseActivity;->mPaused:Z

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/BaseActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onResume()V

    .line 44
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    return-void
.end method

.method public refreshAfterRecovery()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public scan()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
