.class public Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;
.super Ljava/lang/Object;
.source "AlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/model/AlbumBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumDrawableInfo"
.end annotation


# instance fields
.field public final mDrawableAlbumArt:Ljava/lang/String;

.field public final mDrawableAlbumId:J

.field public final mDrawableAlbumName:Ljava/lang/String;

.field public final mDrawableArtistName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "art"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-wide p2, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumId:J

    .line 204
    iput-object p4, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumArt:Ljava/lang/String;

    .line 205
    invoke-static {p5}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableAlbumName:Ljava/lang/String;

    .line 206
    invoke-static {p6}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;->mDrawableArtistName:Ljava/lang/String;

    .line 207
    return-void
.end method
