.class public abstract Lcom/miui/player/helper/controller/MediaPlaybackController;
.super Ljava/lang/Object;
.source "MediaPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;,
        Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;
    }
.end annotation


# static fields
.field public static final ALBUM_CHANGED_FLAG:I = 0x2

.field public static final LYRIC_CHANGED_FLAG:I = 0x1

.field public static final NONE_CHANGED_FLAG:I = 0x0

.field public static final SLIDE_FORCED_FLAG:I = 0x5

.field public static final TRACK_CHANGED_FLAG:I = 0x3

.field public static final USER_FORCED_FLAG:I = 0x4


# instance fields
.field protected mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

.field private mIsActive:Z

.field private mIsDirty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsDirty:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public active()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->update()V

    .line 68
    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsActive:Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->setVisible(Z)V

    .line 70
    return-void
.end method

.method public deactive()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsActive:Z

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->setVisible(Z)V

    .line 78
    return-void
.end method

.method protected abstract dirty(I)Z
.end method

.method protected abstract doUpdate()Z
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsActive:Z

    return v0
.end method

.method protected isDirty()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsDirty:Z

    return v0
.end method

.method public abstract setDrawingCacheEnabled(Z)V
.end method

.method protected abstract setVisible(Z)V
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 95
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 99
    return-void
.end method

.method public touch(ILcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;)V
    .locals 1
    .parameter "type"
    .parameter "controllerInfo"

    .prologue
    .line 59
    iput-object p2, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/controller/MediaPlaybackController;->dirty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsDirty:Z

    .line 61
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->doUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mIsDirty:Z

    .line 91
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
