.class Lcom/miui/player/MediaPlaybackService$AlbumInfo;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumInfo"
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mFilePath:Ljava/lang/String;

    .line 1100
    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mUri:Landroid/net/Uri;

    return-void
.end method
