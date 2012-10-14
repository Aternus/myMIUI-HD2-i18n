.class Lcom/android/providers/downloads/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field public mBytesNotified:I

.field public mBytesSoFar:I

.field public mContinuingDownload:Z

.field public mHeaderAcceptRanges:Ljava/lang/String;

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field public mHeaderETag:Ljava/lang/String;

.field public mHeaderIfRangeId:Ljava/lang/String;

.field public mHeaderLastModified:Ljava/lang/String;

.field public mTimeLastNotification:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 107
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    .line 111
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>()V

    return-void
.end method
