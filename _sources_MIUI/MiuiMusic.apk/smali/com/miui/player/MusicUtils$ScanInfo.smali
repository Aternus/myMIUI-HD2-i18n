.class public Lcom/miui/player/MusicUtils$ScanInfo;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanInfo"
.end annotation


# instance fields
.field public isSeeking:Z

.field public lastEventTime:J

.field public posOverride:J

.field public startSeekPos:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
