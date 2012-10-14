.class Lcom/android/providers/downloads/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field public mCountRetry:Z

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mMimeType:Ljava/lang/String;

.field public mNewUri:Ljava/lang/String;

.field public mRedirectCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 85
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 86
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 88
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 92
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 95
    return-void
.end method
