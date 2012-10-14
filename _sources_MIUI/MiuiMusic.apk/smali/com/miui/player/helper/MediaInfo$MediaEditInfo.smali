.class public Lcom/miui/player/helper/MediaInfo$MediaEditInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaEditInfo"
.end annotation


# instance fields
.field public final mNewAlbum:Ljava/lang/String;

.field public final mNewArtist:Ljava/lang/String;

.field public final mNewTitle:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "newTitle"
    .parameter "newArtist"
    .parameter "newAlbum"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mPath:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewTitle:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewArtist:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/miui/player/helper/MediaInfo$MediaEditInfo;->mNewAlbum:Ljava/lang/String;

    .line 86
    return-void
.end method
