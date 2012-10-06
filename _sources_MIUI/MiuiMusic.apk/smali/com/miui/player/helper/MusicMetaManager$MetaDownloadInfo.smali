.class public Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
.super Ljava/lang/Object;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/MusicMetaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaDownloadInfo"
.end annotation


# instance fields
.field public final mAlbumName:Ljava/lang/String;

.field public final mArtistName:Ljava/lang/String;

.field public final mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    const-string v1, ""

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .line 331
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mTrackName:Ljava/lang/String;

    .line 332
    if-eqz p3, :cond_2

    move-object v0, p3

    :goto_2
    iput-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .line 333
    return-void

    .line 330
    :cond_0
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, ""

    move-object v0, v1

    goto :goto_1

    .line 332
    :cond_2
    const-string v0, ""

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mTrackName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
