.class public Lcom/miui/player/ui/BaseListActivity;
.super Landroid/app/ListActivity;
.source "BaseListActivity.java"

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
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseListActivity;->mPaused:Z

    return-void
.end method


# virtual methods
.method protected enableDatabaseError(ZZ)Z
    .locals 1
    .parameter "enable"
    .parameter "alphabetScroller"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/helper/SongScanListener;->enableDatabaseError(ZZ)Z

    move-result v0

    return v0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/miui/player/ui/BaseListActivity;->mPaused:Z

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/player/ui/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 24
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/BaseListActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/BaseListActivity;->requestWindowFeature(I)Z

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/BaseListActivity;->setVolumeControlStream(I)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/player/ui/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    new-instance v0, Lcom/miui/player/helper/SongScanListener;

    invoke-direct {v0, p0, p0, p0}, Lcom/miui/player/helper/SongScanListener;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/SongScanListener$SongScanner;Lcom/miui/player/MusicUtils$OnDialogCallback;)V

    iput-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    .line 30
    iget-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onCreate()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onDestroy()V

    .line 50
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 51
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseListActivity;->mPaused:Z

    .line 36
    iget-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onPause()V

    .line 37
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/BaseListActivity;->mPaused:Z

    .line 44
    iget-object v0, p0, Lcom/miui/player/ui/BaseListActivity;->mSongScanListener:Lcom/miui/player/helper/SongScanListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/SongScanListener;->onResume()V

    .line 45
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    return-void
.end method

.method public refreshAfterRecovery()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public scan()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
