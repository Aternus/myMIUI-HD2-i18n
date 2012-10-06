.class public interface abstract Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
.super Ljava/lang/Object;
.source "NowplayingBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationCallback"
.end annotation


# virtual methods
.method public abstract getCurrentImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isClockwise()Z
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isShowCurrentMask()Z
.end method

.method public abstract onOperationClick(Landroid/view/View;)V
.end method

.method public abstract onQueueChanged()V
.end method
