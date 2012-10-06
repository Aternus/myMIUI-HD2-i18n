.class public Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteMediaInfo"
.end annotation


# instance fields
.field public final mAppointName:Ljava/lang/String;

.field public mCandidateUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDetails:Ljava/lang/String;

.field public final mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "id"
    .parameter "appointName"
    .parameter "details"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p4, candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 736
    iput-object p3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    .line 737
    iput-object p4, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 738
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
