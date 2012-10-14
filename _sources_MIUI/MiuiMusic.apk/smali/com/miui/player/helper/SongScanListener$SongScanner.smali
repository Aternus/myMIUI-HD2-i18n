.class public interface abstract Lcom/miui/player/helper/SongScanListener$SongScanner;
.super Ljava/lang/Object;
.source "SongScanListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongScanListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SongScanner"
.end annotation


# virtual methods
.method public abstract isEnableScanReceiver()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isRecoveryCompleteReceiver()Z
.end method

.method public abstract onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract refreshAfterRecovery()V
.end method

.method public abstract refreshBeforeRecovery()V
.end method

.method public abstract scan()V
.end method
